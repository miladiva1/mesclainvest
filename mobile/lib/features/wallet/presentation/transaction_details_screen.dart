// feito por camila fernandes costacurta RA:25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como Scaffold, Column, Text).
import 'package:intl/intl.dart'; // Biblioteca de Formatação (permite usar DateFormat para arrumar datas).
import 'package:cloud_firestore/cloud_firestore.dart'; // Biblioteca do Banco de Dados (permite usar Timestamp).

/**
 * CLASSE: TransactionDetailsScreen
 * TIPO: StatelessWidget (Widget Fixo/Estático)
 * O QUE FAZ: Exibe os detalhes completos de uma transação específica (Comprovante).
 * Mostra o valor total, preço pago, quantidade de tokens e o status da operação.
 */
class TransactionDetailsScreen extends StatelessWidget {
  final Map<String, dynamic> transacao; // Os dados da transação (tipo, valor, data, etc).
  final String ticker; // O código da startup (ex: AGRI3).

  const TransactionDetailsScreen({
    super.key,
    required this.transacao,
    required this.ticker,
  });

  @override
  Widget build(BuildContext context) {
    // Formata a data da transação para exibição no comprovante.
    final dataFormatada = transacao['data'] != null
        ? DateFormat('MMM dd, hh:mm a').format((transacao['data'] as Timestamp).toDate())
        : 'Data não disponível';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Detalhes", style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // VALOR PRINCIPAL DO COMPROVANTE (Quantidade de Tokens)
            Text(
              "${transacao['Tokens Comprados'] ?? transacao['Tokens Vendidos'] ?? 0} $ticker",
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF512DA8)),
            ),
            // PREÇO TOTAL PAGO NA TRANSAÇÃO
            Text(
              "R\$ ${(transacao['Preco Pago'] as num?)?.toStringAsFixed(2) ?? '0.00'}",
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 40),
            // CAIXA DE DETALHES DO COMPROVANTE
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFFF8F9FB),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  _buildDetailRow("Data", dataFormatada),
                  _buildDetailRow("Status", transacao['status'] ?? 'Sucesso', isStatus: true),
                  _buildDetailRow("Preço Pago", "R\$ ${(transacao['Preco Pago'] as num?)?.toStringAsFixed(2) ?? '0.00'}"),
                  _buildDetailRow("Tokens", "${transacao['Tokens Comprados'] ?? transacao['Tokens Vendidos'] ?? 0}"),
                  _buildDetailRow("Valor Unitário", "R\$ ${(transacao['Valor Token'] as num?)?.toStringAsFixed(2) ?? '0.00'}"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /**
   * FUNÇÃO AUXILIAR: _buildDetailRow
   * O QUE FAZ: Cria cada uma das linhas de informação no comprovante (Data, Status, etc).
   */
  Widget _buildDetailRow(String label, String value, {bool isStatus = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(color: Colors.grey)),
          Text(
            value,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: isStatus ? Colors.green : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
