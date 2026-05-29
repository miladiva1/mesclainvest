```dart
import 'package:flutter/material.dart';
// import -> importa bibliotecas
// material.dart -> biblioteca principal de widgets visuais do Flutter

import 'package:google_fonts/google_fonts.dart';
// google_fonts -> biblioteca para usar fontes personalizadas

import 'package:cloud_firestore/cloud_firestore.dart';
// cloud_firestore -> biblioteca do Firebase Firestore

import 'package:firebase_auth/firebase_auth.dart';
// firebase_auth -> biblioteca de autenticação do Firebase

import 'widgets/startup_card.dart';
// importa o componente personalizado StartupCard

class BalcaoNegociacaoPage extends StatefulWidget {
// class -> cria uma classe
// StatefulWidget -> widget com estado dinâmico

  const BalcaoNegociacaoPage({super.key});

  @override
  State<BalcaoNegociacaoPage> createState() {
// State -> controla o estado do widget
// createState() -> cria o estado da página

    return _BalcaoNegociacaoPageState();
  }
}

class _BalcaoNegociacaoPageState
    extends State<BalcaoNegociacaoPage> {
// State -> classe responsável pelas mudanças da interface

  String _filtroSelecionado = 'Todas';

  void _abrirFiltros() {
// void -> função sem retorno
// _abrirFiltros() -> função que abre a janela de filtros

    showDialog(
// showDialog() -> abre uma janela modal

      context: context,

      builder: (context) {
// builder -> constrói widgets dinamicamente

        return AlertDialog(
// AlertDialog -> caixa de diálogo pronta do Flutter

          shape: RoundedRectangleBorder(
// RoundedRectangleBorder -> cria bordas arredondadas

            borderRadius: BorderRadius.circular(20),
          ),

          title: const Text("Filtrar por Setor"),

          content: Column(
// Column -> organiza widgets verticalmente

            mainAxisSize: MainAxisSize.min,

            children: [
              const SizedBox(height: 10),

              Wrap(
// Wrap -> organiza widgets quebrando linha automaticamente

                spacing: 10,
                runSpacing: 10,

                children: [
                  'Todas',
                  'Agronegócio',
                  'Tecnologia',
                  'Sustentabilidade',
                  'Saúde',
                  'Educação',
                ].map((label) {
// map() -> percorre lista transformando elementos

                  final bool isSelected =
                      _filtroSelecionado == label;
// bool -> valor verdadeiro ou falso
// isSelected -> verifica se o item está selecionado

                  return ChoiceChip(
// ChoiceChip -> botão de seleção

                    label: Text(label),

                    selected: isSelected,

                    onSelected: (selected) {
// onSelected -> executa ao selecionar

                      setState(() {
// setState() -> atualiza a interface

                        _filtroSelecionado = label;
                      });

                      Navigator.pop(context);
// Navigator.pop() -> fecha a janela atual
                    },

                    selectedColor: const Color(0xFF512DA8),
                  );
                }).toList(),
// toList() -> converte resultado em lista
              ),
            ],
          ),

          actions: [
            TextButton(
// TextButton -> botão simples de texto

              onPressed: () => Navigator.pop(context),

              child: const Text("Fechar"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
// Widget -> elemento visual
// build() -> constrói a interface da tela
// BuildContext -> contexto da árvore de widgets

    return Scaffold(
// Scaffold -> estrutura base da tela

      backgroundColor: const Color(0xFFF8F9FB),

      appBar: AppBar(
// AppBar -> barra superior da aplicação

        title: Text(
          'BALCÃO DE NEGOCIAÇÕES',

          style: GoogleFonts.montserrat(
// GoogleFonts.montserrat() -> aplica fonte Montserrat
          ),
        ),

        actions: [
          IconButton(
// IconButton -> botão com ícone

            icon: const Icon(Icons.tune),

            onPressed: _abrirFiltros,
          ),
        ],
      ),

      body: Column(
// Column -> organiza widgets verticalmente

        children: [
          if (_filtroSelecionado != 'Todas')
// if -> condição

            Padding(
// Padding -> adiciona espaçamento interno

              child: Row(
// Row -> organiza widgets horizontalmente

                children: [
                  Text("Filtrado por:"),

                  Chip(
// Chip -> etiqueta visual

                    label: Text(_filtroSelecionado),

                    onDeleted: () =>
                        setState(() {
// onDeleted -> executa ao remover chip

                      _filtroSelecionado = 'Todas';
                    }),
                  ),
                ],
              ),
            ),

          Expanded(
// Expanded -> ocupa o espaço disponível

            child: FutureBuilder<QuerySnapshot>(
// FutureBuilder -> widget que espera operação assíncrona
// QuerySnapshot -> conjunto de documentos do Firestore

              future: FirebaseFirestore.instance
                  .collection('startups')
                  .get(),
// FirebaseFirestore -> classe principal do Firestore
// instance -> instância ativa do Firestore
// collection() -> acessa coleção
// get() -> busca dados do banco

              builder: (context, startupsSnap) {
// builder -> constrói interface após receber dados

                if (!startupsSnap.hasData)
// hasData -> verifica se os dados chegaram

                  return const Center(
// Center -> centraliza widgets

                    child: CircularProgressIndicator(),
// CircularProgressIndicator -> indicador de carregamento
                  );

                return StreamBuilder<QuerySnapshot>(
// StreamBuilder -> widget que escuta atualizações em tempo real

                  stream: FirebaseFirestore.instance
                      .collection('exchange')
                      .snapshots(),
// snapshots() -> escuta alterações em tempo real

                  builder: (context, exchangeSnap) {

                    if (!exchangeSnap.hasData)
                      return const Center(
                        child: CircularProgressIndicator(),
                      );

                    final userId = FirebaseAuth
                        .instance.currentUser?.uid;
// FirebaseAuth -> autenticação Firebase
// currentUser -> usuário logado
// uid -> identificador do usuário

                    final investStream = userId != null
                        ? FirebaseFirestore.instance
                            .collection('users')
                            .doc(userId)
                            .collection('investimentos')
                            .snapshots()
                        : const Stream<QuerySnapshot>.empty();
// doc() -> acessa documento específico
// Stream.empty() -> stream vazia

                    return StreamBuilder<QuerySnapshot>(

                      stream: investStream,

                      builder: (context, investSnap) {

                        final startupsDocs =
                            startupsSnap.data!.docs;
// docs -> lista de documentos

                        final exchangeDocs =
                            exchangeSnap.data!.docs;

                        final investDocs =
                            investSnap.data?.docs ?? [];

                        final List<Map<String, dynamic>>
                            combinedList = [];
// List -> lista
// Map -> estrutura chave e valor
// dynamic -> aceita qualquer tipo

                        for (var s in startupsDocs) {
// for -> percorre elementos da lista
// var -> tipo inferido automaticamente

                          final sData =
                              s.data() as Map<String, dynamic>;
// data() -> pega dados do documento
// as -> conversão de tipo

                          final ex = exchangeDocs
                              .where((e) =>
                                  e.id == s.id)
                              .firstOrNull
                              ?.data()
                              as Map<String, dynamic>?;
// where() -> filtra elementos
// firstOrNull -> pega primeiro item ou nulo

                          final inv = investDocs
                              .where((i) =>
                                  i.id == s.id)
                              .firstOrNull
                              ?.data()
                              as Map<String, dynamic>?;

                          final preco =
                              ex?['precoAtual'] ??
                                  (sData[
                                              'currentTokenPriceCents'] ??
                                          0) /
                                      100.0;
// ?? -> operador de valor padrão

                          final qtd =
                              inv?['tokensComprados'] ?? 0;

                          final double variacao =
                              (ex?['variacao'] ?? 0.0)
                                  .toDouble();
// double -> número decimal
// toDouble() -> converte para decimal

                          String ticker =
                              s.id.toUpperCase();
// toUpperCase() -> transforma em maiúsculo

                          switch (s.id) {
// switch -> múltiplas condições

                            case 'agrisense':
                              ticker = 'AGRI3';
                              break;
// break -> encerra o case

                            case 'devmatch':
                              ticker = 'DEVM3';
                              break;

                            case 'ecocycle':
                              ticker = 'ECYC1';
                              break;

                            case 'healthbit':
                              ticker = 'HBIT3';
                              break;

                            case 'smartcampus':
                              ticker = 'SCMP3';
                              break;
                          }

                          combinedList.add({
// add() -> adiciona item na lista

                            'nome':
                                sData['name'] ??
                                    'Desconhecido',

                            'ticker': ticker,

                            'logo': sData[
                                    'coverImageUrl'] ??
                                'assets/images/logos/logotipoAgriSense.png',

                            'preco':
                                preco.toDouble(),

                            'valorizacao':
                                variacao > 0
                                    ? '+${variacao.toStringAsFixed(1)}%'
                                    : '${variacao.toStringAsFixed(1)}%',
// toStringAsFixed() -> define casas decimais

                            'qtd': qtd,

                            'setor': sData['tags']
                                            ?.isNotEmpty ==
                                        true
                                ? sData['tags'][0]
                                : 'Desconhecido',

                            'id': s.id,
                          });
                        }

                        final listaFiltrada =
                            _filtroSelecionado ==
                                    'Todas'
                                ? combinedList
                                : combinedList
                                    .where((s) {
// where() -> filtra lista

                                  final setor =
                                      (s['setor']
                                              as String)
                                          .toLowerCase();
// toLowerCase() -> transforma em minúsculo

                                  final filtro =
                                      _filtroSelecionado
                                          .toLowerCase();

                                  if (filtro ==
                                          'agronegócio' &&
                                      setor.contains(
                                          'agro'))
// contains() -> verifica se contém texto
                                    return true;

                                  if (filtro ==
                                          'tecnologia' &&
                                      setor.contains(
                                          'tech'))
                                    return true;

                                  if (filtro ==
                                          'sustentabilidade' &&
                                      (setor.contains(
                                              'clean') ||
                                          setor.contains(
                                              'green')))
                                    return true;

                                  if (filtro ==
                                          'saúde' &&
                                      setor.contains(
                                          'health'))
                                    return true;

                                  if (filtro ==
                                          'educação' &&
                                      setor.contains(
                                          'edtech'))
                                    return true;

                                  return s['setor'] ==
                                      _filtroSelecionado;
                                }).toList();

                        return listaFiltrada.isEmpty
// isEmpty -> verifica se lista está vazia

                            ? Center(
                                child: Column(
                                  children: [
                                    Icon(
                                        Icons.search_off),

                                    Text(
                                      "Nenhuma startup encontrada",
                                    ),
                                  ],
                                ),
                              )

                            : ListView.builder(
// ListView.builder() -> lista otimizada para muitos itens

                                padding:
                                    const EdgeInsets
                                        .all(20),

                                itemCount:
                                    listaFiltrada
                                        .length,
// length -> quantidade de itens

                                itemBuilder:
                                    (context,
                                        index) {
// itemBuilder -> constrói cada item da lista

                                  final startup =
                                      listaFiltrada[
                                          index];

                                  final double total =
                                      startup[
                                              'preco'] *
                                          startup[
                                              'qtd'];

                                  return StartupCard(
// StartupCard -> componente personalizado

                                    startup: startup,

                                    total: total,
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
```
