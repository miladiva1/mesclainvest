// feito por camila fernandes costacurta RA:25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como Scaffold, Column, Row).
import 'package:google_fonts/google_fonts.dart'; // Biblioteca de fontes (permite usar GoogleFonts.lora).
import 'package:fl_chart/fl_chart.dart'; // Biblioteca de gráficos (permite usar LineChart, FlSpot).
import 'package:cloud_functions/cloud_functions.dart'; // Biblioteca de funções na nuvem (permite usar FirebaseFunctions, httpsCallable).
import 'package:cloud_firestore/cloud_firestore.dart'; // Biblioteca do Banco de Dados (permite usar FirebaseFirestore, DocumentSnapshot).
import 'package:firebase_auth/firebase_auth.dart'; // Biblioteca de Autenticação (permite usar FirebaseAuth, currentUser).
import 'package:mobile/features/wallet/presentation/token_performance_screen.dart' as token_page; // Importa a página de performance (permite navegar para ValorizacaoPage).
import 'widgets/asset_chart_widget.dart'; // Importa o widget do gráfico (permite usar AssetChartWidget).
import 'widgets/order_book_widget.dart'; // Importa o widget do livro de ofertas (permite usar OrderBookWidget).
import 'widgets/transaction_history_widget.dart'; // Importa o widget do histórico (permite usar TransactionHistoryWidget).
import 'widgets/asset_action_button.dart'; // Importa o botão de ação (permite usar AssetActionButton).

/**
 * CLASSE: AssetDetailsScreen
 * TIPO: StatefulWidget (Widget com Estado)
 * O QUE FAZ: Mostra todos os detalhes de uma startup selecionada, incluindo gráfico de preço, 
 * livro de ofertas, histórico de transações e botões para investir ou vender.
 */
class AssetDetailsScreen extends StatefulWidget {
  final Map<String, dynamic> startup; // Os dados da startup selecionada.
  const AssetDetailsScreen({super.key, required this.startup});

  @override
  State<AssetDetailsScreen> createState() => _AssetDetailsScreenState();
}

class _AssetDetailsScreenState extends State<AssetDetailsScreen> {
  final TextEditingController _quantidadeController = TextEditingController(); // Controlador para o campo de quantidade nos modais.
  bool _isLoading = false; // Controla o estado de carregamento durante as transações.

  @override
  void dispose() {
    _quantidadeController.dispose(); // Limpa o controlador ao fechar a tela para evitar vazamento de memória.
    super.dispose();
  }

  /**
   * FUNÇÃO: _getStartupId
   * O QUE FAZ: Traduz o Ticker (ex: AGRI3) de volta para o ID do banco de dados (ex: agrisense).
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

  /**
   * FUNÇÃO: _abrirModalInvestir
   * O QUE FAZ: Abre o modal (janela de baixo) para comprar tokens.
   * INTEGRAÇÃO: Chama a Cloud Function 'exchange-buyTokens'.
   */
  void _abrirModalInvestir() {
    _quantidadeController.clear();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (bottomSheetContext) {
        return StatefulBuilder(
          builder: (builderContext, setModalState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(bottomSheetContext).viewInsets.bottom,
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Investir em ${widget.startup['ticker']}",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _quantidadeController,
                      decoration: InputDecoration(
                        labelText: "Quantidade de Tokens",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        prefixIcon: const Icon(Icons.add_chart),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF512DA8),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        onPressed: _isLoading
                            ? null
                            : () async {
                                final quantidadeTexto = _quantidadeController.text.replaceAll(',', '.');
                                final quantidade = int.tryParse(quantidadeTexto) ?? 0;

                                if (quantidade <= 0) {
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    const SnackBar(
                                      content: Text('Informe uma quantidade válida (número inteiro > 0).'),
                                      backgroundColor: Colors.orange,
                                    ),
                                  );
                                  return;
                                }

                                setModalState(() => _isLoading = true);

                                try {
                                  final startupId = _getStartupId(widget.startup['ticker']);
                                  final callable = FirebaseFunctions.instance.httpsCallable('exchange-buyTokens');
                                  await callable.call({'startupId': startupId, 'quantidade': quantidade});

                                  if (!mounted) return;
                                  Navigator.pop(builderContext);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Ordem de compra executada com sucesso!'),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                } on FirebaseFunctionsException catch (e) {
                                  setModalState(() => _isLoading = false);
                                  if (!mounted) return;
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    SnackBar(
                                      content: Text(e.message ?? 'Erro na transação.'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                } catch (e) {
                                  setModalState(() => _isLoading = false);
                                  if (!mounted) return;
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    SnackBar(content: Text('Erro inesperado: $e'), backgroundColor: Colors.red),
                                  );
                                }
                              },
                        child: _isLoading
                            ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                            : const Text("Confirmar Compra", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  /**
   * FUNÇÃO: _abrirModalVender
   * O QUE FAZ: Abre o modal para vender tokens que o usuário já possui.
   * INTEGRAÇÃO: Chama a Cloud Function 'exchange-sellTokens'.
   */
  void _abrirModalVender() {
    _quantidadeController.clear();
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (bottomSheetContext) {
        return StatefulBuilder(
          builder: (builderContext, setModalState) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(bottomSheetContext).viewInsets.bottom,
              ),
              child: Container(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Vender ${widget.startup['ticker']}",
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      controller: _quantidadeController,
                      decoration: InputDecoration(
                        labelText: "Quantidade de Tokens",
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                        prefixIcon: const Icon(Icons.sell),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[700],
                          padding: const EdgeInsets.symmetric(vertical: 15),
                        ),
                        onPressed: _isLoading
                            ? null
                            : () async {
                                final quantidadeTexto = _quantidadeController.text.replaceAll(',', '.');
                                final quantidade = int.tryParse(quantidadeTexto) ?? 0;

                                if (quantidade <= 0) {
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    const SnackBar(
                                      content: Text('Informe uma quantidade válida (número inteiro > 0).'),
                                      backgroundColor: Colors.orange,
                                    ),
                                  );
                                  return;
                                }

                                setModalState(() => _isLoading = true);

                                try {
                                  final startupId = _getStartupId(widget.startup['ticker']);
                                  final callable = FirebaseFunctions.instance.httpsCallable('exchange-sellTokens');
                                  await callable.call({'startupId': startupId, 'quantidade': quantidade});

                                  if (!mounted) return;
                                  Navigator.pop(builderContext);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Venda realizada com sucesso!'),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                } on FirebaseFunctionsException catch (e) {
                                  setModalState(() => _isLoading = false);
                                  if (!mounted) return;
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    SnackBar(
                                      content: Text(e.message ?? 'Erro na transação.'),
                                      backgroundColor: Colors.red,
                                    ),
                                  );
                                } catch (e) {
                                  setModalState(() => _isLoading = false);
                                  if (!mounted) return;
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    SnackBar(content: Text('Erro inesperado: $e'), backgroundColor: Colors.red),
                                  );
                                }
                              },
                        child: _isLoading
                            ? const SizedBox(height: 20, width: 20, child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white))
                            : const Text("Confirmar Venda", style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(widget.startup['nome'], style: const TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            // SALDO ATUAL DO TOKEN
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseAuth.instance.currentUser != null
                  ? FirebaseFirestore.instance
                      .collection('users')
                      .doc(FirebaseAuth.instance.currentUser!.uid)
                      .collection('investimentos')
                      .doc(widget.startup['id'] ?? _getStartupId(widget.startup['ticker']))
                      .snapshots()
                  : const Stream.empty(),
              builder: (context, snapshot) {
                final qtdReal = snapshot.data?.data() != null
                    ? (snapshot.data!.data() as Map<String, dynamic>)['tokensComprados'] ?? 0
                    : widget.startup['qtd']; // Fallback para o valor inicial.

                return Text(
                  "$qtdReal ${widget.startup['ticker']}",
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF512DA8)),
                );
              }
            ),
            const SizedBox(height: 30),

            // BOTÕES DE AÇÃO (REUTILIZÁVEIS)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AssetActionButton(
                  icon: Icons.auto_graph,
                  label: "Investir",
                  onTap: _abrirModalInvestir,
                ),
                const SizedBox(width: 40),
                AssetActionButton(
                  icon: Icons.sell,
                  label: "Vender",
                  onTap: _abrirModalVender,
                ),
              ],
            ),
            const SizedBox(height: 30),

            // BOTÃO DE PERFORMANCE (NAVEGAÇÃO)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const token_page.ValorizacaoPage()),
                  );
                },
                icon: const Icon(Icons.insights, color: Colors.white),
                label: const Text("Ver Performance Detalhada", style: TextStyle(color: Colors.white)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF512DA8),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // GRÁFICO (WIDGET REUTILIZÁVEL)
            AssetChartWidget(startup: widget.startup),

            const SizedBox(height: 30),

            // LIVRO DE OFERTAS (WIDGET REUTILIZÁVEL)
            OrderBookWidget(startup: widget.startup),

            const SizedBox(height: 30),

            // HISTÓRICO DE TRANSAÇÕES (WIDGET REUTILIZÁVEL)
            TransactionHistoryWidget(startup: widget.startup),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
