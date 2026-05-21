//GUILHERME PREVENTI CORREIA

import 'package:flutter/material.dart';
// Função da Linha: Importa package:flutter/material.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:flutter/material.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/core/theme/app_colors.dart';
// Função da Linha: Importa package:mobile/core/theme/app_colors.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/core/theme/app_colors.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/startups/domain/startup.dart';
// Função da Linha: Importa package:mobile/features/startups/domain/startup.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/startups/domain/startup.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

class PrivateQuestionsChatScreen extends StatefulWidget {
// Função da Linha: Define a tela de chat para perguntas privadas de uma startup.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// PrivateQuestionsChatScreen = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// StatefulWidget = Classe do Flutter. Define um widget com estado mutavel.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  final StartupDetail startup;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // StartupDetail = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // startup = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  const PrivateQuestionsChatScreen({super.key, required this.startup});
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // PrivateQuestionsChatScreen = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  // super = Referencia da Classe Pai. Acessa membros herdados.
  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
  // key = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // , = Separador. Divide argumentos, parametros ou itens de lista.
  // required = Modificador de Parametro. Obriga o envio desse argumento nomeado.
  // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
  // startup = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  @override
  // Função da Linha: Informa ao Dart que o proximo metodo sobrescreve um metodo herdado.
  // @ = Marcador de Anotacao. Introduz metadados para a proxima declaracao.
  // override = Anotacao de Sobrescrita. Confirma que o membro substitui outro herdado.
  State<PrivateQuestionsChatScreen> createState() =>
  // Função da Linha: Liga o widget ao objeto State responsavel pelos dados mutaveis.
  // State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
  // <PrivateQuestionsChatScreen> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // createState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
      _PrivateQuestionsChatScreenState();
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // PrivateQuestionsChatScreenState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

class _PrivateQuestionsChatScreenState
// Função da Linha: Define o estado privado que controla mensagens, campo de texto e rolagem do chat.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// PrivateQuestionsChatScreenState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    extends State<PrivateQuestionsChatScreen> {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
    // <PrivateQuestionsChatScreen> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
    // extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  final TextEditingController _messageController = TextEditingController();
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // TextEditingController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // messageController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final ScrollController _scrollController = ScrollController();
  // Função da Linha: Cria ou usa um controlador para movimentar a rolagem da lista.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // ScrollController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // scrollController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  final List<_PrivateChatMessage> _messages = [];
  // Função da Linha: Cria, le ou atualiza a lista de mensagens privadas exibidas no chat.
  // List = Identificador de Classe de Colecao. Representa uma lista ordenada de elementos.
  // <_PrivateChatMessage> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de List.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // messages = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
  // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  @override
  // Função da Linha: Informa ao Dart que o proximo metodo sobrescreve um metodo herdado.
  // @ = Marcador de Anotacao. Introduz metadados para a proxima declaracao.
  // override = Anotacao de Sobrescrita. Confirma que o membro substitui outro herdado.
  void dispose() {
  // Função da Linha: Declara o metodo chamado quando o widget precisa liberar recursos.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    _messageController.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // messageController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _scrollController.dispose();
    // Função da Linha: Cria ou usa um controlador para movimentar a rolagem da lista.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // scrollController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    super.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // super = Referencia da Classe Pai. Acessa membros herdados.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  @override
  // Função da Linha: Informa ao Dart que o proximo metodo sobrescreve um metodo herdado.
  // @ = Marcador de Anotacao. Introduz metadados para a proxima declaracao.
  // override = Anotacao de Sobrescrita. Confirma que o membro substitui outro herdado.
  Widget build(BuildContext context) {
  // Função da Linha: Define o metodo que monta a interface visual da tela.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // build = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // BuildContext = Identificador de Tipo do Flutter. Localiza o widget dentro da arvore.
  // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    return Scaffold(
    // Função da Linha: Retorna a estrutura principal da tela.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Scaffold = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      backgroundColor: const Color(0xFFFAFAFC),
      // Função da Linha: Aplica uma cor ao elemento visual.
      // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
      // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // 0xFFFAFAFC = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      appBar: AppBar(
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // appBar = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        backgroundColor: AppColors.background,
        // Função da Linha: Aplica uma cor ao elemento visual.
        // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // background = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        elevation: 0,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // elevation = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        leading: IconButton(
        // Função da Linha: Cria um botao interativo para o usuario.
        // leading = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // IconButton = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          icon: const Icon(Icons.arrow_back, color: Color(0xFF4B5563)),
          // Função da Linha: Organiza os widgets filhos no eixo horizontal.
          // icon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // arrow_back = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // 0xFF4B5563 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          onPressed: () => Navigator.pop(context),
          // Função da Linha: Executa uma navegacao entre telas ou altera a pilha de rotas.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // onPressed = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
          // Navigator = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // pop = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        title: const Text(
        // Função da Linha: Cria um texto visivel na interface.
        // title = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          'Perguntas privadas',
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // 'Perguntas privadas' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          style: TextStyle(
          // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
          // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            color: AppColors.textPrimary,
            // Função da Linha: Aplica uma cor ao elemento visual.
            // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // textPrimary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fontSize: 22,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 22 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fontWeight: FontWeight.w800,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // w800 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        centerTitle: true,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // centerTitle = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // true = Literal Booleano. Representa valor verdadeiro.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      body: Column(
      // Função da Linha: Organiza os widgets filhos no eixo vertical.
      // body = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Column = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        children: [
        // Função da Linha: Abre a lista de widgets filhos.
        // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
          _buildStartupHeader(),
          // Função da Linha: Monta o cabecalho do chat com dados da startup.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
          // buildStartupHeader = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          Expanded(
          // Função da Linha: Faz o filho ocupar o espaco restante disponivel.
          // Expanded = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            child: _messages.isEmpty
            // Função da Linha: Cria, le ou atualiza a lista de mensagens privadas exibidas no chat.
            // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
            // messages = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // isEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                ? _buildEmptyState()
                // Função da Linha: Monta a mensagem visual exibida quando nao ha perguntas privadas.
                // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                // buildEmptyState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                : ListView.separated(
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // ListView = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // separated = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    controller: _scrollController,
                    // Função da Linha: Cria ou usa um controlador para movimentar a rolagem da lista.
                    // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                    // scrollController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    padding: const EdgeInsets.fromLTRB(30, 26, 24, 24),
                    // Função da Linha: Aplica espacamento interno ao widget filho.
                    // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                    // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    // 30 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    // 26 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    itemCount: _messages.length,
                    // Função da Linha: Cria, le ou atualiza a lista de mensagens privadas exibidas no chat.
                    // itemCount = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                    // messages = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // length = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    separatorBuilder: (_, index) => const SizedBox(height: 22),
                    // Função da Linha: Cria espaco fixo ou limita largura e altura.
                    // separatorBuilder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    // _ = Identificador Privado. Nome acessivel apenas dentro da biblioteca Dart atual.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    // index = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                    // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // 22 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    itemBuilder: (context, index) {
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // itemBuilder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    // index = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
                      return _buildMessageBubble(_messages[index]);
                      // Função da Linha: Cria, le ou atualiza a lista de mensagens privadas exibidas no chat.
                      // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
                      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                      // buildMessageBubble = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      // messages = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                      // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                      // index = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
                    },
                    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                  ),
                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          _buildMessageComposer(),
          // Função da Linha: Monta o campo inferior usado para digitar e enviar mensagens.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
          // buildMessageComposer = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ],
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  Widget _buildStartupHeader() {
  // Função da Linha: Monta o cabecalho do chat com dados da startup.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildStartupHeader = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final startupName = widget.startup.name.trim();
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // startupName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // startup = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // name = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    return Container(
    // Função da Linha: Cria uma caixa configuravel de layout e estilo.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      width: double.infinity,
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // double = Tipo Decimal. Representa numeros com casas decimais.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // infinity = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      padding: const EdgeInsets.fromLTRB(30, 18, 30, 18),
      // Função da Linha: Aplica espacamento interno ao widget filho.
      // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
      // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // 30 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      decoration: const BoxDecoration(
      // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
      // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
      // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        color: Color(0xFFFFFBFF),
        // Função da Linha: Aplica uma cor ao elemento visual.
        // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // 0xFFFFFBFF = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        border: Border(bottom: BorderSide(color: Color(0xFFEDE7F6), width: 1)),
        // Função da Linha: Aplica uma cor ao elemento visual.
        // border = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // bottom = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // BorderSide = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // 0xFFEDE7F6 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      child: Row(
      // Função da Linha: Organiza os widgets filhos no eixo horizontal.
      // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Row = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        children: [
        // Função da Linha: Abre a lista de widgets filhos.
        // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
          Container(
          // Função da Linha: Cria uma caixa configuravel de layout e estilo.
          // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            width: 44,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 44 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            height: 44,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 44 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            decoration: BoxDecoration(
            // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
            // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              color: AppColors.white,
              // Função da Linha: Aplica uma cor ao elemento visual.
              // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              shape: BoxShape.circle,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // shape = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // BoxShape = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // circle = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              boxShadow: [
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // boxShadow = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                BoxShadow(
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // BoxShadow = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  color: Colors.black.withValues(alpha: 0.05),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // black = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // withValues = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // alpha = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // 0.05 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  blurRadius: 12,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // blurRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 12 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  offset: const Offset(0, 4),
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // offset = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  // 4 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ],
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            child: const Icon(
            // Função da Linha: Mostra um icone visual na interface.
            // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // Icon = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              Icons.lock_outline,
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // lock_outline = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              color: AppColors.primary,
              // Função da Linha: Aplica uma cor ao elemento visual.
              // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // primary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              size: 24,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          const SizedBox(width: 16),
          // Função da Linha: Cria espaco fixo ou limita largura e altura.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // 16 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          Expanded(
          // Função da Linha: Faz o filho ocupar o espaco restante disponivel.
          // Expanded = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            child: Column(
            // Função da Linha: Organiza os widgets filhos no eixo vertical.
            // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // Column = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              crossAxisAlignment: CrossAxisAlignment.start,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // crossAxisAlignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // start = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              children: [
              // Função da Linha: Abre a lista de widgets filhos.
              // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                if (startupName.isNotEmpty) ...[
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                // startupName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // isNotEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                  Text(
                  // Função da Linha: Cria um texto visivel na interface.
                  // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    startupName,
                    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                    // startupName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    maxLines: 1,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // maxLines = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    overflow: TextOverflow.ellipsis,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // overflow = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // TextOverflow = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // ellipsis = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    style: const TextStyle(
                    // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
                    // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                    // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      color: AppColors.textPrimary,
                      // Função da Linha: Aplica uma cor ao elemento visual.
                      // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // textPrimary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      fontSize: 18,
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      fontWeight: FontWeight.w800,
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // w800 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                    ),
                    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                  ),
                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  const SizedBox(height: 2),
                  // Função da Linha: Cria espaco fixo ou limita largura e altura.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 2 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ],
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                const Text(
                // Função da Linha: Cria um texto visivel na interface.
                // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  'Chat restrito para investidores',
                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                  // 'Chat restrito para investidores' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  style: TextStyle(
                  // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
                  // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    color: Color(0xFF6200EE),
                    // Função da Linha: Aplica uma cor ao elemento visual.
                    // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    // 0xFF6200EE = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    fontSize: 15,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // 15 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    fontWeight: FontWeight.w600,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // w600 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                  ),
                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ],
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ],
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  Widget _buildEmptyState() {
  // Função da Linha: Monta a mensagem visual exibida quando nao ha perguntas privadas.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildEmptyState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    return Center(
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Center = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      child: Padding(
      // Função da Linha: Aplica espacamento interno ao widget filho.
      // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Padding = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        padding: const EdgeInsets.symmetric(horizontal: 36),
        // Função da Linha: Aplica espacamento interno ao widget filho.
        // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // symmetric = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // horizontal = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // 36 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        child: Column(
        // Função da Linha: Organiza os widgets filhos no eixo vertical.
        // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // Column = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          mainAxisSize: MainAxisSize.min,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // mainAxisSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // min = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          children: [
          // Função da Linha: Abre a lista de widgets filhos.
          // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
            Container(
            // Função da Linha: Cria uma caixa configuravel de layout e estilo.
            // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              width: 76,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 76 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              height: 76,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 76 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              decoration: const BoxDecoration(
              // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
              // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                color: Color(0xFFF8F0FF),
                // Função da Linha: Aplica uma cor ao elemento visual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                // 0xFFF8F0FF = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                shape: BoxShape.circle,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // shape = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // BoxShape = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // circle = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: const Icon(
              // Função da Linha: Mostra um icone visual na interface.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // Icon = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                Icons.chat_bubble_outline,
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // chat_bubble_outline = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                color: AppColors.primary,
                // Função da Linha: Aplica uma cor ao elemento visual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // primary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                size: 36,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 36 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            const SizedBox(height: 18),
            // Função da Linha: Cria espaco fixo ou limita largura e altura.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            const Text(
            // Função da Linha: Cria um texto visivel na interface.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              'Nenhuma pergunta privada ainda.',
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // 'Nenhuma pergunta privada ainda.' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              textAlign: TextAlign.center,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // textAlign = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // center = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              style: TextStyle(
              // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
              // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                color: AppColors.textPrimary,
                // Função da Linha: Aplica uma cor ao elemento visual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // textPrimary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontSize: 18,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontWeight: FontWeight.w800,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // w800 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            const SizedBox(height: 8),
            // Função da Linha: Cria espaco fixo ou limita largura e altura.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 8 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            const Text(
            // Função da Linha: Cria um texto visivel na interface.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              'As perguntas enviadas por investidores aparecer\u00e3o aqui.',
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // 'As perguntas enviadas por investidores aparecer\u00e3o aqui.' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              textAlign: TextAlign.center,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // textAlign = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // center = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              style: TextStyle(
              // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
              // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                color: Color(0xFF697386),
                // Função da Linha: Aplica uma cor ao elemento visual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                // 0xFF697386 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontSize: 15,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 15 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                height: 1.4,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 1.4 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontWeight: FontWeight.w500,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // w500 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ],
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  Widget _buildMessageBubble(_PrivateChatMessage message) {
  // Função da Linha: Monta o balao visual de uma mensagem do chat.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildMessageBubble = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // PrivateChatMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final screenWidth = MediaQuery.of(context).size.width;
    // Função da Linha: Le informacoes de tamanho e area segura da tela atual.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // screenWidth = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // MediaQuery = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // size = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // width = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    final bubbleColor = message.isMine ? AppColors.primary : AppColors.white;
    // Função da Linha: Aplica uma cor ao elemento visual.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // bubbleColor = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
    // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // primary = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
    // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    final textColor = message.isMine ? AppColors.white : AppColors.textPrimary;
    // Função da Linha: Aplica uma cor ao elemento visual.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // textColor = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
    // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // white = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
    // textPrimary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    return Align(
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Align = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      alignment: message.isMine ? Alignment.centerRight : Alignment.centerLeft,
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // alignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
      // centerRight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // centerLeft = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      child: Column(
      // Função da Linha: Organiza os widgets filhos no eixo vertical.
      // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Column = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        crossAxisAlignment: message.isMine
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // crossAxisAlignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            ? CrossAxisAlignment.end
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
            // CrossAxisAlignment = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // end = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            : CrossAxisAlignment.start,
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // CrossAxisAlignment = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // start = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
        children: [
        // Função da Linha: Abre a lista de widgets filhos.
        // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
          Container(
          // Função da Linha: Cria uma caixa configuravel de layout e estilo.
          // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            constraints: BoxConstraints(maxWidth: screenWidth * 0.72),
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // constraints = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // BoxConstraints = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // maxWidth = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // screenWidth = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // 0.72 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            // Função da Linha: Aplica espacamento interno ao widget filho.
            // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // symmetric = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // horizontal = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // 20 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            // vertical = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // 16 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            decoration: BoxDecoration(
            // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
            // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              color: bubbleColor,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // bubbleColor = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              borderRadius: BorderRadius.circular(18),
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              boxShadow: message.isMine
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // boxShadow = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  ? null
                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                  // null = Literal Nulo. Representa ausencia de valor.
                  : [
                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                      BoxShadow(
                      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                      // BoxShadow = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        color: Colors.black.withValues(alpha: 0.08),
                        // Função da Linha: Aplica uma cor ao elemento visual.
                        // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                        // black = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                        // withValues = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        // alpha = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // 0.08 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        blurRadius: 8,
                        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                        // blurRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 8 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        offset: const Offset(0, 2),
                        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                        // offset = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        // 2 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      ),
                      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                    ],
                    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                    // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            child: Text(
            // Função da Linha: Cria um texto visivel na interface.
            // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              message.text,
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              style: TextStyle(
              // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
              // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                color: textColor,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // textColor = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontSize: 18,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                height: 1.35,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 1.35 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontWeight: FontWeight.w500,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // w500 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          const SizedBox(height: 6),
          // Função da Linha: Cria espaco fixo ou limita largura e altura.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // 6 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          Text(
          // Função da Linha: Cria um texto visivel na interface.
          // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            message.time,
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // time = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            style: const TextStyle(
            // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
            // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              color: Color(0xFF8B95A7),
              // Função da Linha: Aplica uma cor ao elemento visual.
              // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // 0xFF8B95A7 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              fontSize: 14,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 14 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              fontWeight: FontWeight.w500,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // w500 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ],
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  Widget _buildMessageComposer() {
  // Função da Linha: Monta o campo inferior usado para digitar e enviar mensagens.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildMessageComposer = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final hasText = _messageController.text.trim().isNotEmpty;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // hasText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // messageController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // isNotEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    return SafeArea(
    // Função da Linha: Evita que o conteudo fique sob areas do sistema.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // SafeArea = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      top: false,
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // top = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // false = Literal Booleano. Representa valor falso.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      child: Container(
      // Função da Linha: Cria uma caixa configuravel de layout e estilo.
      // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        padding: const EdgeInsets.fromLTRB(24, 20, 20, 18),
        // Função da Linha: Aplica espacamento interno ao widget filho.
        // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        // 20 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        decoration: const BoxDecoration(
        // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
        // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          color: AppColors.background,
          // Função da Linha: Aplica uma cor ao elemento visual.
          // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // background = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          border: Border(top: BorderSide(color: Color(0xFFEDEFF3), width: 1)),
          // Função da Linha: Aplica uma cor ao elemento visual.
          // border = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // top = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // BorderSide = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // 0xFFEDEFF3 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        child: Row(
        // Função da Linha: Organiza os widgets filhos no eixo horizontal.
        // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // Row = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          children: [
          // Função da Linha: Abre a lista de widgets filhos.
          // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
            Expanded(
            // Função da Linha: Faz o filho ocupar o espaco restante disponivel.
            // Expanded = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              child: Container(
              // Função da Linha: Cria uma caixa configuravel de layout e estilo.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                height: 62,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 62 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                padding: const EdgeInsets.symmetric(horizontal: 24),
                // Função da Linha: Aplica espacamento interno ao widget filho.
                // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // symmetric = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                // horizontal = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                decoration: BoxDecoration(
                // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
                // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  color: const Color(0xFFF0F1F4),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0xFFF0F1F4 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  borderRadius: BorderRadius.circular(31),
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 31 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                alignment: Alignment.center,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // alignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // center = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                child: TextField(
                // Função da Linha: Cria um campo editavel para entrada de texto.
                // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // TextField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  controller: _messageController,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                  // messageController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  onChanged: (_) => setState(() {}),
                  // Função da Linha: Liga uma acao do usuario a uma funcao de callback.
                  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                  // onChanged = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // _ = Identificador Privado. Nome acessivel apenas dentro da biblioteca Dart atual.
                  // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                  // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
                  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  decoration: const InputDecoration(
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // InputDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    isCollapsed: true,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // isCollapsed = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // true = Literal Booleano. Representa valor verdadeiro.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    border: InputBorder.none,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // border = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // InputBorder = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // none = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    hintText: 'Escreva sua mensagem...',
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // 'Escreva sua mensagem...' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    hintStyle: TextStyle(
                    // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
                    // hintStyle = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      color: Color(0xFF697386),
                      // Função da Linha: Aplica uma cor ao elemento visual.
                      // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      // 0xFF697386 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      fontSize: 18,
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      fontWeight: FontWeight.w500,
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // w500 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                    ),
                    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                  ),
                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  style: const TextStyle(
                  // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
                  // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    color: AppColors.textPrimary,
                    // Função da Linha: Aplica uma cor ao elemento visual.
                    // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // textPrimary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    fontSize: 18,
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                  ),
                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            const SizedBox(width: 14),
            // Função da Linha: Cria espaco fixo ou limita largura e altura.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 14 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            SizedBox(
            // Função da Linha: Cria espaco fixo ou limita largura e altura.
            // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              width: 58,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 58 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              height: 58,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 58 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: ElevatedButton(
              // Função da Linha: Cria um botao interativo para o usuario.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // ElevatedButton = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                onPressed: hasText ? _sendMessage : null,
                // Função da Linha: Envia a mensagem digitada para a lista local e atualiza a rolagem.
                // onPressed = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // hasText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                // sendMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                // null = Literal Nulo. Representa ausencia de valor.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                style: ElevatedButton.styleFrom(
                // Função da Linha: Cria um botao interativo para o usuario.
                // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // ElevatedButton = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // styleFrom = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  elevation: 0,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // elevation = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  backgroundColor: hasText
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // hasText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      ? AppColors.primary
                      // Função da Linha: Aplica uma cor ao elemento visual.
                      // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                      // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // primary = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      : const Color(0xFFD1D5DB),
                      // Função da Linha: Aplica uma cor ao elemento visual.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                      // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      // 0xFFD1D5DB = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                  disabledBackgroundColor: const Color(0xFFD1D5DB),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // disabledBackgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0xFFD1D5DB = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  padding: EdgeInsets.zero,
                  // Função da Linha: Aplica espacamento interno ao widget filho.
                  // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // zero = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  shape: const CircleBorder(),
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                  // shape = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // CircleBorder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                child: const Icon(
                // Função da Linha: Mostra um icone visual na interface.
                // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                // Icon = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  Icons.send_outlined,
                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                  // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // send_outlined = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  color: AppColors.white,
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // AppColors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  size: 28,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 28 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ],
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  void _sendMessage() {
  // Função da Linha: Envia a mensagem digitada para a lista local e atualiza a rolagem.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // sendMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final text = _messageController.text.trim();
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // messageController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (text.isEmpty) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // isEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    setState(() {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      _messages.add(
      // Função da Linha: Cria, le ou atualiza a lista de mensagens privadas exibidas no chat.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // messages = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // add = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        _PrivateChatMessage(
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // PrivateChatMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          text: text,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // text = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          time: _formatTime(DateTime.now()),
          // Função da Linha: Formata o horario da mensagem no padrao hora e minuto.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // time = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
          // formatTime = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
          // DateTime = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // now = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          isMine: true,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // isMine = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // true = Literal Booleano. Representa valor verdadeiro.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      );
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      _messageController.clear();
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // messageController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // clear = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    });
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    WidgetsBinding.instance.addPostFrameCallback((_) {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // WidgetsBinding = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // instance = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // addPostFrameCallback = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // _ = Identificador Privado. Nome acessivel apenas dentro da biblioteca Dart atual.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      if (!_scrollController.hasClients) return;
      // Função da Linha: Cria ou usa um controlador para movimentar a rolagem da lista.
      // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // ! = Operador de Negacao. Inverte um valor booleano.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // scrollController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // hasClients = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      _scrollController.animateTo(
      // Função da Linha: Cria ou usa um controlador para movimentar a rolagem da lista.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // scrollController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // animateTo = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        _scrollController.position.maxScrollExtent,
        // Função da Linha: Cria ou usa um controlador para movimentar a rolagem da lista.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // scrollController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // position = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // maxScrollExtent = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        duration: const Duration(milliseconds: 220),
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // duration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // milliseconds = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // 220 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        curve: Curves.easeOut,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // curve = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // Curves = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // easeOut = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      );
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    });
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  String _formatTime(DateTime dateTime) {
  // Função da Linha: Formata o horario da mensagem no padrao hora e minuto.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // formatTime = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // DateTime = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final hour = dateTime.hour.toString().padLeft(2, '0');
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // hour = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // dateTime = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // toString = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // padLeft = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // 2 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    // '0' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    final minute = dateTime.minute.toString().padLeft(2, '0');
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // minute = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // dateTime = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // toString = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // padLeft = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // 2 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    // '0' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    return '$hour:$minute';
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // '$hour:$minute' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

class _PrivateChatMessage {
// Função da Linha: Define o modelo privado usado para representar uma mensagem do chat.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// PrivateChatMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  final String text;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final String time;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // time = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final bool isMine;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // bool = Tipo Booleano. Aceita apenas verdadeiro ou falso.
  // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  const _PrivateChatMessage({
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // PrivateChatMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    required this.text,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // required = Modificador de Parametro. Obriga o envio desse argumento nomeado.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    required this.time,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // required = Modificador de Parametro. Obriga o envio desse argumento nomeado.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // time = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    this.isMine = false,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // isMine = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // false = Literal Booleano. Representa valor falso.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
  });
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
