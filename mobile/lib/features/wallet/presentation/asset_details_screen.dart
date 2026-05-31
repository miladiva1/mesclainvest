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

// ESTA CLASSE DEFINE A TELA DE DETALHES DE UMA STARTUP ESPECÍFICA, ONDE O USUÁRIO PODE INVESTIR OU TROCAR TOKENS.
class AssetDetailsScreen extends StatefulWidget { // Declaração da classe como widget com estado.
  final Map<String, dynamic> startup; // Atributo que armazena os dados da startup selecionada.
  const AssetDetailsScreen({super.key, required this.startup}); // Construtor que recebe a startup como parâmetro obrigatório.

  // ESTA FUNÇÃO CRIA O ESTADO PARA A TELA DE DETALHES DO ATIVO, ONDE AS INTERAÇÕES DO USUÁRIO SERÃO PROCESSADAS.
  @override // Indica que estamos fornecendo uma implementação personalizada.
  State<AssetDetailsScreen> createState() => _AssetDetailsScreenState(); // Cria o objeto de estado desta tela.
} // Fim da classe.

// ESTA CLASSE GERENCIA O ESTADO E AS INTERAÇÕES DA TELA DE DETALHES, COMO A ABERTURA DE MODAIS E ATUALIZAÇÃO DO GRÁFICO.
class _AssetDetailsScreenState extends State<AssetDetailsScreen> { // Classe de estado da tela de detalhes.
  // Controlador para gerenciar o texto digitado pelo usuário no campo de quantidade de tokens.
  final TextEditingController _quantidadeController = TextEditingController(); // Controlador para o campo de entrada de quantidade.

  // Flag de controle de UI que indica se uma transação financeira está sendo processada no servidor.
  bool _isLoading = false; // Variável que indica se há um processo de carregamento em curso.

  // ESTA FUNÇÃO É CHAMADA QUANDO A TELA É FECHADA, LIMPANDO OS RECURSOS UTILIZADOS PARA EVITAR VAZAMENTO DE MEMÓRIA.
  @override // Indica sobrescrita.
  void dispose() { // Função de descarte.
    // Liberação de recursos para evitar vazamento de memória quando a tela for encerrada.
    _quantidadeController.dispose(); // Descarta o controlador de texto.
    super.dispose(); // Chama o método de limpeza da classe pai.
  } // Fim da função dispose.

  // ESTA FUNÇÃO É RESPONSÁVEL POR BUSCAR O ID CORRETO DA STARTUP NO FIREBASE USANDO O CÓDIGO DA BOLSA (TICKER).
  String _getStartupId(String ticker) { // Início da função de mapeamento.
    switch (ticker) { // Analisa o código recebido.
      case 'AGRI3': return 'agrisense'; // AGRI3 mapeia para agrisense.
      case 'DEVM3': return 'devmatch'; // DEVM3 mapeia para devmatch.
      case 'ECYC1': return 'ecocycle'; // ECYC1 mapeia para ecocycle.
      case 'HBIT3': return 'healthbit'; // HBIT3 mapeia para healthbit.
      case 'SCMP3': return 'smartcampus'; // SCMP3 mapeia para smartcampus.
      default: return 'agrisense'; // Retorno padrão caso não encontre.
    } // Fim do switch.
  } // Fim da função.

  /**
   * MÉTODO: _abrirModalInvestir
   * OBJETIVO: Apresentar a interface de compra de tokens e processar a ordem de investimento.
   * FLUXO DE NEGÓCIO:
   * 1. Captura a quantidade desejada pelo usuário.
   * 2. Invoca a Cloud Function 'exchange-buyTokens' enviando o ID da startup e a quantidade.
   * 3. A lógica de servidor valida saldo e executa a troca, garantindo segurança e integridade dos dados.
   * 4. Retorna feedback visual de sucesso ou erro ao usuário.
   */
  // ESTA FUNÇÃO EXIBE UMA JANELA QUE SOBE DA PARTE INFERIOR PARA QUE O USUÁRIO POSSA DIGITAR A QUANTIDADE E COMPRAR TOKENS.
  void _abrirModalInvestir() { // Início da função do modal de investimento.
    _quantidadeController.clear(); // Limpa o campo de texto antes de abrir.
    showModalBottomSheet( // Função do Flutter para mostrar o modal de baixo.
      context: context, // Passa o contexto da tela.
      isScrollControlled: true, // Permite que o modal mude de tamanho conforme o teclado aparece.
      shape: const RoundedRectangleBorder( // Define a borda do modal.
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)), // Arredonda apenas o topo.
      ), // Fim da borda.
      builder: (bottomSheetContext) { // Construtor visual do modal.
        return StatefulBuilder( // Permite atualizar o estado apenas dentro deste modal.
          builder: (builderContext, setModalState) { // Construtor interno do estado.
            return Padding( // Adiciona preenchimento interno.
              padding: EdgeInsets.only( // Preenchimento ajustável.
                bottom: MediaQuery.of(bottomSheetContext).viewInsets.bottom, // Sobe o modal para não ficar atrás do teclado.
              ), // Fim do padding.
              child: Container( // Caixa principal do modal.
                padding: const EdgeInsets.all(24), // 24 pixels de margem interna.
                child: Column( // Organiza o conteúdo em coluna.
                  mainAxisSize: MainAxisSize.min, // Ocupa o mínimo de espaço possível.
                  children: [ // Filhos da coluna.
                    Text( // Título da operação.
                      "Investir em ${widget.startup['ticker']}", // Nome do ativo no título.
                      style: const TextStyle( // Estilo do texto.
                        fontSize: 18, // Tamanho 18.
                        fontWeight: FontWeight.bold, // Negrito.
                      ), // Fim do estilo.
                    ), // Fim do título.
                    const SizedBox(height: 20), // Espaço de 20 pixels.
                    TextField( // Campo de entrada de texto.
                      controller: _quantidadeController, // Conecta ao controlador.
                      decoration: InputDecoration( // Estilo do campo.
                        labelText: "Quantidade de Tokens", // Texto de instrução.
                        border: OutlineInputBorder( // Borda ao redor do campo.
                          borderRadius: BorderRadius.circular(12), // Cantos arredondados raio 12.
                        ), // Fim da borda.
                        prefixIcon: const Icon(Icons.add_chart), // Ícone decorativo à esquerda.
                      ), // Fim da decoração.
                      keyboardType: TextInputType.number, // Abre o teclado numérico.
                    ), // Fim do campo de texto.
                    const SizedBox(height: 20), // Espaço de 20 pixels.
                    SizedBox( // Define o tamanho do botão.
                      width: double.infinity, // Ocupa toda a largura.
                      child: ElevatedButton( // Botão de destaque.
                        style: ElevatedButton.styleFrom( // Estilo do botão.
                          backgroundColor: const Color(0xFF512DA8), // Fundo roxo.
                          padding: const EdgeInsets.symmetric(vertical: 15), // Margem interna vertical.
                        ), // Fim do estilo.
                        onPressed: _isLoading // Se estiver carregando, o botão fica desativado.
                            ? null
                            : () async { // Ação ao clicar.
                                final quantidadeTexto = _quantidadeController.text.replaceAll(',', '.'); // Corrige vírgula para ponto.
                                final quantidade = int.tryParse(quantidadeTexto) ?? 0; // Tenta converter para número.

                                if (quantidade <= 0) { // Verifica se o valor é válido.
                                  ScaffoldMessenger.of(builderContext).showSnackBar( // Mostra aviso se inválido.
                                    const SnackBar( // Notificação.
                                      content: Text('Informe uma quantidade válida (número inteiro > 0).'), // Mensagem.
                                      backgroundColor: Colors.orange, // Cor laranja de atenção.
                                    ), // Fim do SnackBar.
                                  ); // Fim do aviso.
                                  return; // Para a execução.
                                } // Fim do check.

                                setModalState(() => _isLoading = true); // Ativa o carregamento dentro do modal.

                                try { // Início do processo de compra real.
                                  final startupId = _getStartupId(widget.startup['ticker']); // Pega o ID da empresa.
                                  // INTEGRAÇÃO: Chamada à Cloud Function de compra. O processamento ocorre no servidor por segurança.
                                  final callable = FirebaseFunctions.instance // Prepara a chamada para a nuvem.
                                      .httpsCallable('exchange-buyTokens'); // Nome da função no Firebase.
                                  await callable.call({ // Executa a função passando os dados.
                                    'startupId': startupId, // ID da startup.
                                    'quantidade': quantity, // Quantos tokens comprar.
                                  }); // Fim da chamada.

                                  if (!mounted) return; // Se a tela foi fechada, não faz nada.
                                  Navigator.pop(builderContext); // Fecha o modal de compra.
                                  ScaffoldMessenger.of(context).showSnackBar( // Mostra aviso de sucesso.
                                    const SnackBar( // Notificação.
                                      content: Text('Ordem de compra executada com sucesso!'), // Mensagem.
                                      backgroundColor: Colors.green, // Cor verde.
                                    ), // Fim do SnackBar.
                                  ); // Fim do aviso.
                                } catch (e) { // Se der qualquer outro erro.
                                  setModalState(() => _isLoading = false); // Para o carregamento.
                                  ScaffoldMessenger.of(builderContext).showSnackBar( // Mostra o erro inesperado.
                                    const SnackBar(content: Text('Erro na transação.'), backgroundColor: Colors.red),
                                  ); // Fim do aviso.
                                } // Fim do catch.
                              }, // Fim do onPressed.
                        child: _isLoading // Se estiver carregando.
                            ? const SizedBox( // Mostra o círculo de progresso.
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              ) // Fim do progresso.
                            : const Text( // Senão, mostra o texto do botão.
                                "Confirmar Compra",
                                style: TextStyle(color: Colors.white),
                              ), // Fim do texto.
                      ), // Fim do botão elevado.
                    ), // Fim do SizedBox.
                  ], // Fim dos filhos da coluna.
                ), // Fim da coluna interna.
              ), // Fim do Container.
            ); // Fim do Padding.
          }, // Fim do builder do modal.
        ); // Fim do StatefulBuilder.
      }, // Fim do construtor visual.
    ); // Fim do showModalBottomSheet.
  } // Fim da função _abrirModalInvestir.

  /**
   * MÉTODO: _abrirModalVender
   * OBJETIVO: Apresentar a interface de venda de tokens e processar a ordem de desinvestimento.
   * FLUXO DE NEGÓCIO:
   * 1. Captura a quantidade de tokens que o usuário deseja disponibilizar para venda.
   * 2. Invoca a Cloud Function 'exchange-sellTokens'.
   * 3. O servidor verifica se o usuário possui os tokens e cria a ordem de venda no livro.
   * 4. Feedback visual imediato sobre o status da operação.
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
                                    const SnackBar(content: Text('Informe uma quantidade válida.')),
                                  );
                                  return;
                                }

                                setModalState(() => _isLoading = true);

                                try {
                                  final startupId = _getStartupId(widget.startup['ticker']);
                                  // INTEGRAÇÃO: Chamada à Cloud Function de venda. Garante que a transação siga as regras de negócio do backend.
                                  final callable = FirebaseFunctions.instance.httpsCallable('exchange-sellTokens');
                                  await callable.call({'startupId': startupId, 'quantidade': quantidade});

                                  if (!mounted) return;
                                  Navigator.pop(builderContext);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(content: Text('Venda realizada com sucesso!'), backgroundColor: Colors.green),
                                  );
                                } catch (e) {
                                  setModalState(() => _isLoading = false);
                                  ScaffoldMessenger.of(builderContext).showSnackBar(
                                    const SnackBar(content: Text('Erro ao vender tokens.'), backgroundColor: Colors.red),
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

  // ESTA FUNÇÃO É A PRINCIPAL PARA DESENHAR O VISUAL DA TELA DE DETALHES, COMBINANDO O SALDO, BOTÕES, GRÁFICO E HISTÓRICO.
  @override // Indica sobrescrita.
  Widget build(BuildContext context) { // Função de construção.
    return Scaffold( // Estrutura da página.
      backgroundColor: Colors.white, // Fundo branco.
      appBar: AppBar( // Barra superior.
        leading: IconButton( // Ícone à esquerda.
          icon: const Icon(Icons.arrow_back, color: Colors.black), // Seta de voltar preta.
          onPressed: () => Navigator.pop(context), // Volta para a tela anterior ao clicar.
        ), // Fim do ícone.
        title: Text(widget.startup['nome'], style: const TextStyle(color: Colors.black)), // Nome da startup no título da barra.
        backgroundColor: Colors.white, // Fundo da barra branco.
        elevation: 0, // Sem sombra na barra superior.
      ), // Fim da AppBar.
      body: SingleChildScrollView( // Permite rolar a tela se o conteúdo for maior que o visor.
        child: Column( // Organiza o conteúdo em uma coluna vertical.
          children: [ // Filhos da coluna.
            const SizedBox(height: 20), // Espaço de 20 pixels no topo.
            
            // Reatividade: O saldo é atualizado automaticamente sempre que houver mudança no documento do usuário no Firestore.
            StreamBuilder<DocumentSnapshot>( // Monitora o saldo de tokens em tempo real.
              stream: FirebaseAuth.instance.currentUser != null // Se houver um usuário logado.
                  ? FirebaseFirestore.instance // Pega o banco de dados.
                      .collection('users') // Pasta de usuários.
                      .doc(FirebaseAuth.instance.currentUser!.uid) // Documento do usuário atual.
                      .collection('investimentos') // Pasta de investimentos dele.
                      .doc(widget.startup['id'] ?? _getStartupId(widget.startup['ticker'])) // Documento deste ativo específico.
                      .snapshots() // Abre o canal de dados.
                  : const Stream.empty(), // Se não houver usuário, canal vazio.
              builder: (context, snapshot) { // Construtor visual do saldo.
                final qtdReal = snapshot.data?.data() != null // Verifica se existem dados.
                    ? (snapshot.data!.data() as Map<String, dynamic>)['tokensComprados'] ?? 0 // Pega a quantidade do banco.
                    : widget.startup['qtd']; // Caso contrário, usa a quantidade inicial.

                return Text( // Exibe o saldo na tela.
                  "$qtdReal ${widget.startup['ticker']}", // Formato: "100 TICKER".
                  style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Color(0xFF512DA8)), // Grande, negrito e roxo.
                ); // Fim do texto de saldo.
              } // Fim do construtor do stream.
            ), // Fim do StreamBuilder.
            const SizedBox(height: 30), // Espaço de 30 pixels.

            Row( // Organiza os botões de ação em uma linha horizontal.
              mainAxisAlignment: MainAxisAlignment.center, // Centraliza os botões.
              children: [ // Filhos da linha.
                AssetActionButton( // Botão de Investir.
                  icon: Icons.auto_graph, // Ícone de gráfico.
                  label: "Investir", // Texto do botão.
                  onTap: _abrirModalInvestir, // Abre o modal de investimento ao clicar.
                ), // Fim do botão Investir.
                const SizedBox(width: 40), // Espaço de 40 pixels entre botões.
                AssetActionButton( // Botão de Vender.
                  icon: Icons.sell, // Ícone de etiqueta de venda.
                  label: "Vender", // Texto do botão.
                  onTap: _abrirModalVender, // Abre o modal de venda ao clicar.
                ), // Fim do botão Vender.
              ], // Fim dos botões.
            ), // Fim da linha de ações.
            const SizedBox(height: 30), // Espaço de 30 pixels.

            // Navegação: Encaminha o usuário para uma visão analítica profunda da valorização histórica do token.
            Padding( // Adiciona margens laterais ao botão de performance.
              padding: const EdgeInsets.symmetric(horizontal: 20), // 20 pixels.
              child: ElevatedButton.icon( // Botão com ícone.
                onPressed: () { // Ação ao clicar.
                  Navigator.push( // Comando de navegação.
                    context, // Contexto atual.
                    MaterialPageRoute(builder: (context) => const token_page.ValorizacaoPage()), // Destino: ValorizacaoPage.
                  ); // Fim da navegação.
                }, // Fim do clique.
                icon: const Icon(Icons.insights, color: Colors.white), // Ícone de insights branco.
                label: const Text("Ver Performance Detalhada", style: TextStyle(color: Colors.white)), // Texto branco.
                style: ElevatedButton.styleFrom( // Estilo do botão.
                  backgroundColor: const Color(0xFF512DA8), // Fundo roxo.
                  minimumSize: const Size(double.infinity, 50), // Ocupa toda a largura com altura 50.
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), // Cantos arredondados raio 12.
                ), // Fim do estilo.
              ), // Fim do botão de performance.
            ), // Fim do Padding.
            const SizedBox(height: 30), // Espaço de 30 pixels.

            AssetChartWidget(startup: widget.startup), // Renderiza o widget do gráfico de variação.

            const SizedBox(height: 30), // Espaço de 30 pixels.

            OrderBookWidget(startup: widget.startup), // Renderiza o widget do livro de ofertas.

            const SizedBox(height: 30), // Espaço de 30 pixels.

            TransactionHistoryWidget(startup: widget.startup), // Renderiza o widget do histórico de transações.
            const SizedBox(height: 20), // Espaço final de 20 pixels.
          ], // Fim da lista da coluna principal.
        ), // Fim da coluna principal.
      ), // Fim do scrollview.
    ); // Fim da estrutura Scaffold.
  }
}


