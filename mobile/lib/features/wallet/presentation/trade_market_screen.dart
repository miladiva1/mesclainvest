// feito por camila fernandes costacurta RA:25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como Scaffold, AppBar, Column).
import 'package:google_fonts/google_fonts.dart'; // Biblioteca de fontes (permite usar GoogleFonts.montserrat).
import 'package:cloud_firestore/cloud_firestore.dart'; // Biblioteca do Banco de Dados (permite usar FirebaseFirestore, snapshots).
import 'package:firebase_auth/firebase_auth.dart'; // Biblioteca de Autenticação (permite usar FirebaseAuth, uid).
import 'widgets/startup_card.dart'; // Importa o componente do card (permite usar o widget StartupCard).

/**
 * CLASSE: BalcaoNegociacaoPage
 * TIPO: StatefulWidget (Widget com Estado)
 * O QUE FAZ: Esta é a tela principal do Balcão de Negociações. Ela é um StatefulWidget porque 
 * precisa reagir a mudanças (como quando o usuário clica em um filtro e a lista precisa atualizar).
 */
class BalcaoNegociacaoPage extends StatefulWidget { // Declaração da classe como um widget que pode mudar de estado.
  const BalcaoNegociacaoPage({super.key}); // Construtor da classe com chave padrão.

  /**
   * MÉTODO: createState
   * O QUE FAZ: Cria a "alma" (o Estado) desta página. É aqui que os dados que mudam ficam guardados.
   */
  @override // Indica que estamos substituindo o método original.
  State<BalcaoNegociacaoPage> createState() => _BalcaoNegociacaoPageState(); // Cria o estado para este widget.
}

/**
 * CLASSE: _BalcaoNegociacaoPageState
 * TIPO: State (Estado da Página)
 * O QUE FAZ: Aqui é onde a mágica acontece. Ela guarda as variáveis, as funções de lógica 
 * e define como a interface (UI) deve ser desenhada baseada nos dados.
 */
class _BalcaoNegociacaoPageState extends State<BalcaoNegociacaoPage> { // Classe que contém o estado e a interface.
  
  // VARIÁVEL: _filtroSelecionado
  // O QUE FAZ: Armazena o nome do setor que o usuário escolheu para filtrar (ex: 'Tecnologia').
  // Por padrão, começa com 'Todas' para mostrar todas as empresas.
  String _filtroSelecionado = 'Todas'; // Variável que armazena qual categoria de empresa está selecionada no filtro.

  /**
   * MÉTODO / FUNÇÃO: _abrirFiltros
   * O QUE FAZ: Abre uma janela flutuante (AlertDialog) para o usuário escolher um setor.
   */
  void _abrirFiltros() { // Função que abre a janela de filtros.
    showDialog( // Comando do Flutter para mostrar um alerta ou pop-up na tela.
      context: context, // Passa o contexto da tela para saber onde desenhar o pop-up.
      builder: (context) { // Função que constrói o conteúdo do pop-up.
        return AlertDialog( // Widget de caixa de diálogo padrão do Material Design.
          shape: RoundedRectangleBorder( // Define o formato das bordas da caixa.
            borderRadius: BorderRadius.circular(20), // Deixa os cantos arredondados com raio 20.
          ),
          title: const Text( // Título da caixa de diálogo.
            "Filtrar por Setor", // Texto do título.
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), // Define o tamanho e negrito.
          ),
          content: Column( // Organiza os elementos dentro do pop-up em uma coluna.
            mainAxisSize: MainAxisSize.min, // Faz a janela ser do tamanho exato do seu conteúdo.
            children: [ // Lista de widgets filhos da coluna.
              const SizedBox(height: 10), // Adiciona um espaço vazio de 10 pixels no topo.
              Wrap( // Organiza os botões em linha e "quebra" para a próxima se não couberem.
                spacing: 10, // Espaço horizontal entre os botões.
                runSpacing: 10, // Espaço vertical entre as linhas de botões.
                children: [ // Lista de categorias que serão transformadas em botões.
                  'Todas',
                  'Agronegócio',
                  'Tecnologia',
                  'Sustentabilidade',
                  'Saúde',
                  'Educação',
                ].map((label) { // Pega cada texto da lista e o transforma em um ChoiceChip.
                  final bool isSelected = _filtroSelecionado == label; // Verifica se este botão é o que já está selecionado.
                  return ChoiceChip( // Widget de botão de escolha arredondado com seleção.
                    label: Text(label), // Define o texto que aparece no botão.
                    selected: isSelected, // Diz ao Flutter se o botão deve aparecer como selecionado.
                    onSelected: (selected) { // Ação ao clicar no botão.
                      setState(() { // Avisa ao Flutter para redesenhar a tela com a nova escolha.
                        _filtroSelecionado = label; // Atualiza a variável do filtro.
                      });
                      Navigator.pop(context); // Fecha a janelinha de filtro após a escolha.
                    },
                    selectedColor: const Color(0xFF512DA8), // Cor roxa para quando o botão estiver selecionado.
                    labelStyle: TextStyle( // Estilo do texto dentro do botão.
                      color: isSelected ? Colors.white : Colors.black, // Branco se selecionado, preto se não.
                    ),
                  );
                }).toList(), // Converte o mapeamento em uma lista real de widgets.
              ),
            ],
          ),
          actions: [ // Botões de ação na parte inferior do pop-up.
            TextButton( // Botão apenas com texto, sem fundo.
              onPressed: () => Navigator.pop(context), // Fecha o pop-up sem fazer nada.
              child: const Text("Fechar", style: TextStyle(color: Colors.grey)), // Texto do botão em cinza.
            ),
          ],
        );
      },
    );
  }

  @override // Sobrescreve o método build original.
  Widget build(BuildContext context) { // Função principal de construção do layout.
    return Scaffold( // Estrutura básica de uma tela no Flutter.
      backgroundColor: const Color(0xFFF8F9FB), // Define uma cor de fundo cinza bem clarinha.
      appBar: AppBar( // Barra de título no topo da tela.
        backgroundColor: Colors.white, // Fundo da barra em branco.
        elevation: 0, // Remove a sombra embaixo da barra de título.
        centerTitle: true, // Centraliza o texto do título.
        title: Text( // Texto que aparece no centro da barra.
          'BALCÃO DE NEGOCIAÇÕES', // Nome da tela.
          style: GoogleFonts.montserrat( // Usa a fonte Montserrat do Google Fonts.
            fontSize: 14, // Tamanho da letra.
            fontWeight: FontWeight.bold, // Texto em negrito.
            letterSpacing: 1.2, // Espaçamento entre as letras.
            color: Colors.black, // Cor preta para o texto.
          ),
        ),
        actions: [ // Lista de ícones ou botões à direita da barra.
          IconButton( // Botão com um ícone de "ajuste" (filtros).
            icon: const Icon(Icons.tune, color: Colors.black), // Ícone de filtro na cor preta.
            onPressed: _abrirFiltros, // Chama a função de abrir o pop-up de filtros ao clicar.
          ),
        ],
      ),
      body: Column( // Organiza o conteúdo principal em uma coluna vertical.
        children: [ // Lista de widgets dentro da coluna.
          if (_filtroSelecionado != 'Todas')
            Padding( // Adiciona margem ao redor da indicação do filtro ativo.
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // Margem lateral de 20 e vertical de 5.
              child: Row( // Organiza o texto e o "chip" do filtro em uma linha horizontal.
                children: [
                  Text( // Texto explicativo.
                    "Filtrado por: ", // Conteúdo do texto.
                    style: TextStyle(color: Colors.grey.shade600, fontSize: 12), // Cinza médio e tamanho 12.
                  ),
                  Chip( // Widget de "etiqueta" para mostrar o filtro ativo.
                    label: Text( // Texto dentro da etiqueta.
                      _filtroSelecionado, // Mostra o nome do setor selecionado.
                      style: const TextStyle(fontSize: 10), // Tamanho pequeno para caber bem.
                    ),
                    onDeleted: () => // Ação ao clicar no "X" da etiqueta.
                        setState(() => _filtroSelecionado = 'Todas'), // Volta o filtro para 'Todas' e redesenha.
                  ),
                ],
              ),
            ),
          
          Expanded(
            child: FutureBuilder<QuerySnapshot>( // Widget que espera por dados que vêm do banco uma única vez.
              future: FirebaseFirestore.instance.collection('startups').get(),
              builder: (context, startupsSnap) { // Construtor que decide o que mostrar dependendo do estado da busca.
                if (!startupsSnap.hasData) // Se os dados ainda não chegaram do banco.
                  return const Center(child: CircularProgressIndicator()); // Mostra um círculo de carregamento no centro.

                return StreamBuilder<QuerySnapshot>( // Widget que "escuta" o banco em tempo real (Stream).
                  stream: FirebaseFirestore.instance
                      .collection('exchange')
                      .snapshots(),
                  builder: (context, exchangeSnap) { // Construtor para os dados de mercado em tempo real.
                    if (!exchangeSnap.hasData) // Se os dados de mercado ainda não carregaram.
                      return const Center(child: CircularProgressIndicator()); // Mostra carregando...

                    final userId = FirebaseAuth.instance.currentUser?.uid;
                    final investStream = userId != null // Verifica se existe um usuário logado no momento.
                        ? FirebaseFirestore.instance
                            .collection('users')
                            .doc(userId)
                            .collection('investimentos')
                            .snapshots() // Se logado, ouve a pasta de investimentos desse usuário.
                        : const Stream<QuerySnapshot>.empty(); // Se não logado, cria um fluxo vazio.

                    return StreamBuilder<QuerySnapshot>( // Terceiro nível: ouve os investimentos do usuário.
                      stream: investStream, // Canal de dados dos investimentos do usuário.
                      builder: (context, investSnap) { // Construtor final que junta todas as informações.
                        final startupsDocs = startupsSnap.data!.docs; // Todas as startups do catálogo.
                        final exchangeDocs = exchangeSnap.data!.docs; // Todos os preços e variações do mercado.
                        final investDocs = investSnap.data?.docs ?? []; // Investimentos do usuário (ou lista vazia).

                        final List<Map<String, dynamic>> combinedList = [];

                        for (var s in startupsDocs) {
                          final sData = s.data() as Map<String, dynamic>;
                          final ex = exchangeDocs
                              .where((e) => e.id == s.id) // Compara o ID do mercado com o ID da startup.
                              .firstOrNull // Pega o primeiro que encontrar ou retorna nulo.
                              ?.data() as Map<String, dynamic>?; // Extrai os dados se existirem.
                          final inv = investDocs
                              .where((i) => i.id == s.id) // Compara o ID do investimento com o ID da startup.
                              .firstOrNull // Pega o resultado ou nulo.
                              ?.data() as Map<String, dynamic>?; // Extrai os dados de investimento.

                          final preco = ex?['precoAtual'] ??
                              (sData['currentTokenPriceCents'] ?? 0) / 100.0; // Converte centavos para Reais.
                          final qtd = inv?['tokensComprados'] ?? 0;
                          final double variacao =
                              (ex?['variacao'] ?? 0.0).toDouble();

                          String ticker = s.id.toUpperCase();
                          switch (s.id) { // Traduz IDs específicos para os nomes de bolsa.
                            case 'agrisense': ticker = 'AGRI3'; break;
                            case 'devmatch': ticker = 'DEVM3'; break;
                            case 'ecocycle': ticker = 'ECYC1'; break;
                            case 'healthbit': ticker = 'HBIT3'; break;
                            case 'smartcampus': ticker = 'SCMP3'; break;
                          }

                          combinedList.add({
                            'nome': sData['name'] ?? 'Desconhecido', // Nome da empresa.
                            'ticker': ticker, // Código da bolsa.
                            'logo': sData['coverImageUrl'] ??
                                'assets/images/logos/logotipoAgriSense.png', // Logo ou imagem padrão.
                            'preco': preco.toDouble(), // Preço unitário do token.
                            'valorizacao': variacao > 0 // Lógica para o sinal de '+' na porcentagem.
                                ? '+${variacao.toStringAsFixed(1)}%' // Se positivo, adiciona '+'.
                                : '${variacao.toStringAsFixed(1)}%', // Se negativo ou zero, mostra normal.
                            'qtd': qtd, // Quantidade que o usuário possui.
                            'setor': sData['tags']?.isNotEmpty == true
                                ? sData['tags'][0] // Pega o primeiro setor da lista de tags.
                                : 'Desconhecido',
                            'id': s.id, // ID único da startup.
                          });
                        }

                        final listaFiltrada = _filtroSelecionado == 'Todas'
                            ? combinedList
                            : combinedList.where((s) {
                                final setor =
                                    (s['setor'] as String).toLowerCase();
                                final filtro = _filtroSelecionado.toLowerCase();
                                if (filtro == 'agronegócio' &&
                                    setor.contains('agro')) return true;
                                if (filtro == 'tecnologia' &&
                                    setor.contains('tech')) return true;
                                if (filtro == 'sustentabilidade' &&
                                    (setor.contains('clean') ||
                                        setor.contains('green'))) return true;
                                if (filtro == 'saúde' && setor.contains('health'))
                                  return true;
                                if (filtro == 'educação' &&
                                    setor.contains('edtech')) return true;
                                return s['setor'] == _filtroSelecionado;
                              }).toList();

                        return listaFiltrada.isEmpty
                            ? Center(
                                child: Column( // Organiza o ícone e o texto de erro.
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon( // Ícone de "lupa com X" (nada encontrado).
                                      Icons.search_off,
                                      size: 64,
                                      color: Colors.grey.shade300,
                                    ),
                                    const SizedBox(height: 16),
                                    Text( // Texto de aviso.
                                      "Nenhuma startup encontrada\nneste setor.",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            : ListView.builder(
                                padding: const EdgeInsets.all(20), // Margem ao redor de toda a lista.
                                itemCount: listaFiltrada.length, // Total de itens para mostrar.
                                itemBuilder: (context, index) { // Função que desenha cada item individualmente.
                                  final startup = listaFiltrada[index]; // Pega os dados da startup nesta posição.
                                  final double total =
                                      startup['preco'] * startup['qtd'];

                                  return StartupCard(
                                    startup: startup, // Passa os dados combinados da empresa.
                                    total: total, // Passa o valor total calculado.
                                  );
                                },
                              );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
