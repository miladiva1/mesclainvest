// feito por camila fernandes costacurta RA:25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como Padding, Column, ChoiceChip).
import 'package:fl_chart/fl_chart.dart'; // Biblioteca de gráficos (permite usar LineChart, FlSpot).
import 'package:cloud_firestore/cloud_firestore.dart'; // Biblioteca do Banco de Dados (permite usar FirebaseFirestore, collection).

/**
 * CLASSE: AssetChartWidget
 * TIPO: StatefulWidget (Widget com Estado)
 * O QUE FAZ: Desenha o gráfico de variação de preço de um ativo.
 * Permite selecionar diferentes períodos (Diário, Semanal, Mensal, etc) e atualiza os dados em tempo real.
 */
class AssetChartWidget extends StatefulWidget {
  final Map<String, dynamic> startup; // Os dados da startup para buscar o histórico de preços.

  const AssetChartWidget({super.key, required this.startup});

  @override
  State<AssetChartWidget> createState() => _AssetChartWidgetState();
}

class _AssetChartWidgetState extends State<AssetChartWidget> {
  String _selectedPeriod = 'Diário'; // Período selecionado no filtro do gráfico.

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Variação do Ativo",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 15),
          // SELETOR DE PERÍODOS
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ['Diário', 'Semanal', 'Mensal', '6 meses', 'YTD'].map((periodo) {
                return Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: ChoiceChip(
                    label: Text(
                      periodo,
                      style: TextStyle(
                        fontSize: 12,
                        color: _selectedPeriod == periodo ? Colors.white : Colors.black,
                      ),
                    ),
                    selected: _selectedPeriod == periodo,
                    selectedColor: const Color(0xFF512DA8),
                    onSelected: (selected) {
                      setState(() => _selectedPeriod = periodo);
                    },
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 20),
          // GRÁFICO DE LINHA EM TEMPO REAL
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('exchange')
                .doc(_getStartupId(widget.startup['ticker']))
                .collection('historicoPrecos')
                .orderBy('data', descending: false)
                .snapshots(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const SizedBox(height: 200, child: Center(child: CircularProgressIndicator()));
              }
              if (snapshot.hasError) {
                return const SizedBox(height: 200, child: Center(child: Text("Erro ao carregar gráfico")));
              }

              final docs = snapshot.data?.docs ?? [];
              if (docs.isEmpty) {
                return const SizedBox(height: 200, child: Center(child: Text("Sem dados históricos")));
              }

              // LÓGICA DE FILTRAGEM POR DATA (Simplificada para o exemplo)
              final now = DateTime.now();
              DateTime dataLimite;
              switch (_selectedPeriod) {
                case 'Diário': dataLimite = now.subtract(const Duration(days: 7)); break;
                case 'Semanal': dataLimite = now.subtract(const Duration(days: 84)); break;
                case 'Mensal': dataLimite = now.subtract(const Duration(days: 30)); break;
                case '6 meses': dataLimite = now.subtract(const Duration(days: 180)); break;
                case 'YTD': dataLimite = DateTime(now.year, 1, 1); break;
                default: dataLimite = now.subtract(const Duration(days: 7));
              }

              final filteredDocs = docs.where((doc) {
                final data = doc['data'] as Timestamp;
                return data.toDate().isAfter(dataLimite) || data.toDate().isAtSameMomentAs(dataLimite);
              }).toList();

              // Converte os documentos do Firestore em pontos (spots) para o gráfico.
              final spots = filteredDocs.asMap().entries.map((entry) {
                final index = entry.key;
                final doc = entry.value;
                final preco = (doc['preco'] as num).toDouble();
                return FlSpot(index.toDouble(), preco);
              }).toList();

              return SizedBox(
                height: 200,
                child: LineChart(
                  LineChartData(
                    gridData: const FlGridData(show: false),
                    titlesData: const FlTitlesData(show: false),
                    borderData: FlBorderData(show: false),
                    lineBarsData: [
                      LineChartBarData(
                        spots: spots.isEmpty ? [const FlSpot(0, 0)] : spots,
                        isCurved: true,
                        color: const Color(0xFF512DA8),
                        barWidth: 3,
                        dotData: const FlDotData(show: false),
                        belowBarData: BarAreaData(
                          show: true,
                          color: const Color(0xFF512DA8).withValues(alpha: 0.1),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
