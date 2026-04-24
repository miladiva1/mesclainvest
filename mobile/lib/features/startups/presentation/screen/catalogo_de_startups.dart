import 'package:flutter/material.dart';

// Tela de Catálogo de Startups
// Esta tela exibe a listagem de projetos disponíveis para investimento conforme o escopo do projeto.
class CatalogoStartupsPage extends StatefulWidget {
  const CatalogoStartupsPage({super.key});

  @override
  State<CatalogoStartupsPage> createState() => _CatalogoStartupsPageState();
}

class _CatalogoStartupsPageState extends State<CatalogoStartupsPage> {
  // Estado para controlar qual filtro está selecionado
  String _filtroSelecionado = 'Todas';

  //Lista de 5 startups com descrições simplificadas
  final List<Map<String, String>> startups = [
    {
      'nome': 'EcoCycle',
      'desc': 'Gamificação de reciclagem na PUC com créditos na cantina.',
      'estagio': 'Nova'
    },
    {
      'nome': 'DevMatch',
      'desc': 'Conecta alunos de TI a projetos e startups do Mescla.',
      'estagio': 'Em operação'
    },
    {
      'nome': 'HealthBit',
      'desc': 'Monitoramento IoT de postura com alertas no celular.',
      'estagio': 'Em expansão'
    },
    {
      'nome': 'AgriSense',
      'desc': 'Sensores de umidade de baixo custo para pequenos produtores.',
      'estagio': 'Em operação'
    },
    {
      'nome': 'SmartCampus',
      'desc': 'Reserva de salas e labs via QR Code em tempo real.',
      'estagio': 'Nova'
    },
  ];

  // Função para abrir o Diálogo de filtros no MEIO da tela (Stakeholder Requirement)
  void _abrirFiltros() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text(
            "Filtrar por Estágio",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: ['Todas', 'Nova', 'Em operação', 'Em expansão'].map((label) {
                  final bool isSelected = _filtroSelecionado == label;
                  return ChoiceChip(
                    label: Text(label),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        _filtroSelecionado = label;
                      });
                      Navigator.pop(context); // Fecha o diálogo após selecionar
                    },
                    selectedColor: const Color(0xFF512DA8),
                    labelStyle: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fechar", style: TextStyle(color: Colors.grey)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Filtra a lista de startups baseada na escolha do usuário
    final listaFiltrada = _filtroSelecionado == 'Todas'
        ? startups
        : startups.where((s) => s['estagio'] == _filtroSelecionado).toList();

    return Scaffold(
      backgroundColor: Colors.white, // Fundo branco seguindo o design do Figma
      body: SafeArea(
        child: Column(
          children: [
            // Cabeçalho: Voltar à esquerda, Título centralizado e Filtro à direita.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Botão de Voltar (Canto superior Esquerdo)
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      // Navigator.pop(context); // Preparado para o Navigator
                    },
                  ),
                  // Título central da página
                  const Text(
                    "Startups MesclaInvest",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  // Botão Filtrar (Canto superior Direito) - Agora abre o Diálogo Central
                  IconButton(
                    icon: const Icon(Icons.tune, color: Colors.black),
                    onPressed: _abrirFiltros,
                  ),
                ],
              ),
            ),

            // Título indicando o filtro atual
            if (_filtroSelecionado != 'Todas')
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  children: [
                    Text(
                      "Filtrado por: ",
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 12),
                    ),
                    Chip(
                      label: Text(_filtroSelecionado, style: const TextStyle(fontSize: 10)),
                      onDeleted: () => setState(() => _filtroSelecionado = 'Todas'),
                    ),
                  ],
                ),
              ),

            // Listagem principal das Startups
            Expanded(
              child: listaFiltrada.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.search_off, size: 64, color: Colors.grey.shade300),
                          const SizedBox(height: 16),
                          Text(
                            "Nenhuma startup encontrada\nneste estágio.",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
                          ),
                        ],
                      ),
                    )
                  : ListView.separated(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: listaFiltrada.length,
                      separatorBuilder: (_, __) => Divider(color: Colors.grey.shade100, height: 1),
                      itemBuilder: (context, index) {
                        final item = listaFiltrada[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 22,
                                backgroundColor: Colors.grey.shade100,
                                child: const Icon(Icons.rocket_launch, size: 20, color: Color(0xFF512DA8)),
                              ),
                              const SizedBox(width: 15),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      item['nome']!,
                                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                                    ),
                                    Text(
                                      item['desc']!,
                                      style: TextStyle(color: Colors.grey.shade500, fontSize: 13),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    item['estagio']!,
                                    style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                                  ),
                                  const Text(
                                    "ATIVA",
                                    style: TextStyle(fontSize: 9, color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),

      // Menu inferior (Bottom Navigation Bar) em estilo pílula escura
      bottomNavigationBar: Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        height: 70,
        decoration: BoxDecoration(
          color: const Color(0xFF222222),
          borderRadius: BorderRadius.circular(35),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.home_outlined, color: Colors.white),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(
                color: const Color(0xFF512DA8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.white, size: 18),
                  SizedBox(width: 8),
                  Text(
                    "Explorar",
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)
                  ),
                ],
              ),
            ),
            const Icon(Icons.grid_view, color: Colors.white),
            const Icon(Icons.person_outline, color: Colors.white),
          ],
        ),
      ),
    );
  }
}