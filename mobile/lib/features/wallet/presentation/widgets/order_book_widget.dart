// feito por camila fernandes costacurta RA:25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como Container, Column, Row).
import 'package:cloud_firestore/cloud_firestore.dart'; // Biblioteca do Banco de Dados (permite usar FirebaseFirestore, snapshots).

/**
 * CLASSE: OrderBookWidget
 * TIPO: StatelessWidget (Widget Fixo/Estático)
 * O QUE FAZ: Exibe o Livro de Ofertas do mercado para uma startup específica.
 * Ele mostra as últimas 4 transações de compra/venda registradas no sistema.
 */
class OrderBookWidget extends StatelessWidget {
  final Map<String, dynamic> startup; // Os dados da startup para buscar o histórico.

  const OrderBookWidget({super.key, required this.startup});

  /**
   * FUNÇÃO: _getStartupId
   * O QUE FAZ: Traduz o Ticker para o ID do banco de dados para garantir a busca correta.
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Livro de Ofertas (Mercado)",
            style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF4B0082)),
          ),
          const SizedBox(height: 15),
          StreamBuilder<QuerySnapshot>(
            // BUSCA: Ouve as últimas 4 transações na subcoleção 'Histórico' da startup.
            stream: FirebaseFirestore.instance
                .collection('startups')
                .doc(startup['id'] ?? _getStartupId(startup['ticker']))
                .collection('Histórico')
                .orderBy('data', descending: true)
                .limit(4)
                .snapshots(),
            builder: (context, snapshot) {
              final docs = snapshot.data?.docs ?? [];
              return Table(
                columnWidths: const {
                  0: FlexColumnWidth(1),
                  1: FlexColumnWidth(1),
                  2: FlexColumnWidth(1),
                },
                children: [
                  TableRow(
                    children: [
                      _tableHeader("Tipo"),
                      _tableHeader("Qtd"),
                      _tableHeader("Preço (R\$)"),
                    ],
                  ),
                  if (docs.isEmpty)
                    const TableRow(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          child: Text('Nenhuma transação ainda.', style: TextStyle(color: Colors.grey, fontSize: 12)),
                        ),
                        SizedBox(),
                        SizedBox(),
                      ],
                    )
                  else
                    ...docs.map((doc) {
                      final data = doc.data() as Map<String, dynamic>;
                      final tipo = data['tipo'] ?? 'Compra';
                      final qtd = tipo == 'Venda' ? data['Tokens Vendidos'] : data['Tokens Comprados'];
                      final valor = data['Valor Token'];
                      return _orderRow(
                        tipo,
                        (qtd ?? 0).toString(),
                        (valor as num).toStringAsFixed(2),
                        tipo == 'Venda' ? Colors.red : Colors.green,
                      );
                    }),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  // AUXILIAR: Cria o cabeçalho da tabela.
  Widget _tableHeader(String label) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          label,
          style: const TextStyle(fontSize: 10, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
      );

  // AUXILIAR: Cria uma linha de dados na tabela de ofertas.
  TableRow _orderRow(String tipo, String qtd, String preco, Color color) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(tipo, style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 12)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(qtd, style: const TextStyle(fontSize: 12)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text("R\$ $preco", style: const TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}
