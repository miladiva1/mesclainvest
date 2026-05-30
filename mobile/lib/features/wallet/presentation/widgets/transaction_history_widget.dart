// feito por camila fernandes costacurta RA: 25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como Container, Column, Text).
import 'package:cloud_firestore/cloud_firestore.dart'; // Biblioteca do Banco de Dados (permite usar FirebaseFirestore, QuerySnapshot).
import 'package:firebase_auth/firebase_auth.dart'; // Biblioteca de Autenticação (permite usar FirebaseAuth, currentUser).
import 'package:intl/intl.dart'; // Biblioteca de Formatação (permite usar DateFormat para arrumar datas).
import '../transaction_details_screen.dart'; // Importa a tela de detalhes (permite navegar para TransactionDetailsScreen).

/**
 * CLASSE: TransactionHistoryWidget
 * TIPO: StatefulWidget (Widget com Estado)
 * O QUE FAZ: Exibe o histórico pessoal de transações do usuário para uma startup específica.
 * Permite alternar entre ver poucas transações ou o histórico completo (Ver mais/Ver menos).
 */
class TransactionHistoryWidget extends StatefulWidget {
  final Map<String, dynamic> startup; // Os dados da startup para filtrar o histórico.

  const TransactionHistoryWidget({super.key, required this.startup});

  @override
  State<TransactionHistoryWidget> createState() => _TransactionHistoryWidgetState();
}

class _TransactionHistoryWidgetState extends State<TransactionHistoryWidget> {
  bool _verTodos = false; // Controla se a lista expandida está sendo exibida.

  /**
   * FUNÇÃO: _getStartupId
   * O QUE FAZ: Traduz o Ticker para o ID do banco de dados.
   */
  String _getStartupId(String ticker) {
    switch (ticker) {
      case 'AGRI3': return 'agrisense';
      case 'DEVM3': return 'devmatch';
      case 'ECYC1': return 'ecocycle';
      case 'HBIT3': return 'healthbit';
      case 'SCMP3': return 'smartcampus';
      default: return 'agrisense';
    }
  }

  @override
  Widget build(BuildContext context) {
    final uid = FirebaseAuth.instance.currentUser?.uid; // Pega o ID do usuário logado.
    final startupId = widget.startup['id'] ?? _getStartupId(widget.startup['ticker']);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Histórico",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
          ),
          const SizedBox(height: 10),
          StreamBuilder<QuerySnapshot>(
            // BUSCA: Ouve as transações na subcoleção 'Histórico' que pertencem a este usuário (uid).
            stream: FirebaseFirestore.instance
                .collection('startups')
                .doc(startupId)
                .collection('Histórico')
                .where('uid', isEqualTo: uid)
                .orderBy('data', descending: true)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }

              final docs = snapshot.data?.docs ?? [];

              if (docs.isEmpty) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Text('Nenhuma transação encontrada.', style: TextStyle(color: Colors.grey, fontSize: 13)),
                );
              }

              // LÓGICA: Mostra apenas 2 itens inicialmente, ou todos se '_verTodos' for verdadeiro.
              final exibir = _verTodos ? docs : docs.take(2).toList();

              return Column(
                children: [
                  ...exibir.map((doc) {
                    final data = doc.data() as Map<String, dynamic>;
                    return _buildTransactionTile(data);
                  }),
                  if (docs.length > 2)
                    TextButton(
                      onPressed: () => setState(() => _verTodos = !_verTodos),
                      child: Text(
                        _verTodos ? 'Ver menos' : 'Ver mais',
                        style: const TextStyle(color: Color(0xFF512DA8)),
                      ),
                    ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  /**
   * FUNÇÃO: _buildTransactionTile
   * O QUE FAZ: Cria a linha visual (ListTile) para cada transação no histórico.
   */
  Widget _buildTransactionTile(Map<String, dynamic> item) {
    final tipo = item['tipo'] ?? 'Compra';
    final isCompra = tipo == 'Compra';
    final color = isCompra ? Colors.green : Colors.red;
    final icon = isCompra ? Icons.shopping_cart : Icons.sell;

    // Formata a data que vem do Firestore (Timestamp) para um texto amigável.
    final dataFormatada = item['data'] != null
        ? DateFormat('MMM dd, hh:mm a').format((item['data'] as Timestamp).toDate())
        : '';

    return ListTile(
      // AÇÃO: Ao clicar em uma transação, abre a tela de detalhes (comprovante).
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TransactionDetailsScreen(
              transacao: item,
              ticker: widget.startup['ticker'],
            ),
          ),
        );
      },
      contentPadding: EdgeInsets.zero,
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(color: color.withValues(alpha: 0.1), shape: BoxShape.circle),
        child: Icon(icon, color: color, size: 18),
      ),
      title: Text(tipo, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
      subtitle: Text(dataFormatada, style: const TextStyle(fontSize: 11, color: Colors.grey)),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "${item['Tokens Comprados'] ?? item['Tokens Vendidos'] ?? 0}",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black87),
          ),
          const SizedBox(width: 4),
          Text(
            "${widget.startup['ticker']}",
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
