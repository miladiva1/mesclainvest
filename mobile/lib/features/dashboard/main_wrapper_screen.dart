//GUILHERME PREVENTI CORREIA

import 'package:cloud_firestore/cloud_firestore.dart';
// Função da Linha: Importa package:cloud_firestore/cloud_firestore.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:cloud_firestore/cloud_firestore.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:firebase_auth/firebase_auth.dart';
// Função da Linha: Importa package:firebase_auth/firebase_auth.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:firebase_auth/firebase_auth.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:flutter/material.dart';
// Função da Linha: Importa package:flutter/material.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:flutter/material.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/startups/presentation/screen/list/catalogo_de_startups.dart';
// Função da Linha: Importa package:mobile/features/startups/presentation/screen/list/catalogo_de_startups.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/startups/presentation/screen/list/catalogo_de_startups.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/wallet/presentation/trade_market.dart'
// Função da Linha: Importa package:mobile/features/wallet/presentation/trade_market.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/wallet/presentation/trade_market.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
    as camila_market;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // as = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // camila_market = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/profile/presentation/profile_screen.dart';
// Função da Linha: Importa package:mobile/features/profile/presentation/profile_screen.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/profile/presentation/profile_screen.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/wallet/presentation/wallet_dashboard_screen.dart';
// Função da Linha: Importa package:mobile/features/wallet/presentation/wallet_dashboard_screen.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/wallet/presentation/wallet_dashboard_screen.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

class MainWrapperScreen extends StatefulWidget {
// Função da Linha: Define a tela principal exibida depois que o usuario faz login.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// MainWrapperScreen = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// StatefulWidget = Classe do Flutter. Define um widget com estado mutavel.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  const MainWrapperScreen({super.key});
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // MainWrapperScreen = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  // super = Referencia da Classe Pai. Acessa membros herdados.
  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
  // key = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  @override
  // Função da Linha: Informa ao Dart que o proximo metodo sobrescreve um metodo herdado.
  // @ = Marcador de Anotacao. Introduz metadados para a proxima declaracao.
  // override = Anotacao de Sobrescrita. Confirma que o membro substitui outro herdado.
  State<MainWrapperScreen> createState() => _MainWrapperScreenState();
  // Função da Linha: Liga o widget ao objeto State responsavel pelos dados mutaveis.
  // State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
  // <MainWrapperScreen> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // createState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // MainWrapperScreenState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

class _MainWrapperScreenState extends State<MainWrapperScreen> {
// Função da Linha: Define o estado privado que controla a aba selecionada no menu principal.
// State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
// <MainWrapperScreen> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// MainWrapperScreenState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  int _currentIndex = 0;
  // Função da Linha: Guarda o indice da aba selecionada no menu principal.
  // int = Tipo Inteiro. Representa numeros sem parte decimal.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

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
      body: IndexedStack(
      // Função da Linha: Mantem as telas das abas carregadas e mostra apenas a aba selecionada.
      // body = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // IndexedStack = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        index: _currentIndex,
        // Função da Linha: Le ou altera a aba ativa da navegacao principal.
        // index = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        children: [
        // Função da Linha: Abre a lista de widgets filhos.
        // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
          const WalletDashboardScreen(),
          // Função da Linha: Insere ou referencia a tela Home/dashboard dentro do fluxo principal.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // WalletDashboardScreen = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          const CatalogoStartupsPage(),
          // Função da Linha: Insere ou referencia a tela de catalogo de startups.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // CatalogoStartupsPage = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          _buildBalcaoComTrava(),
          // Função da Linha: Monta a tela do balcao aplicando a regra de acesso do investidor.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
          // buildBalcaoComTrava = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          const ProfileScreen(),
          // Função da Linha: Insere ou referencia a tela de perfil do usuario.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // ProfileScreen = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ],
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      ),
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      bottomNavigationBar: Container(
      // Função da Linha: Cria uma caixa configuravel de layout e estilo.
      // bottomNavigationBar = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        // Função da Linha: Define espacamentos internos ou externos.
        // margin = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // 20 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        height: 70,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // 70 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        decoration: BoxDecoration(
        // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
        // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          color: const Color(0xFF222222),
          // Função da Linha: Aplica uma cor ao elemento visual.
          // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // 0xFF222222 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          borderRadius: BorderRadius.circular(35),
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // 35 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // mainAxisAlignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // spaceEvenly = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          children: [
          // Função da Linha: Abre a lista de widgets filhos.
          // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
            GestureDetector(
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // GestureDetector = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              onTap: () => setState(() => _currentIndex = 0),
              // Função da Linha: Le ou altera a aba ativa da navegacao principal.
              // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
              // onTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
              // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
              // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: _buildNavItem(Icons.home_outlined, "Home", 0),
              // Função da Linha: Monta ou chama um item visual da barra de navegacao inferior.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // buildNavItem = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // home_outlined = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              // "Home" = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
              // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            GestureDetector(
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // GestureDetector = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              onTap: () => setState(() => _currentIndex = 1),
              // Função da Linha: Le ou altera a aba ativa da navegacao principal.
              // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
              // onTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
              // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
              // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: _buildNavItem(Icons.search, "Explorar", 1),
              // Função da Linha: Monta ou chama um item visual da barra de navegacao inferior.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // buildNavItem = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // search = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              // "Explorar" = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
              // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            GestureDetector(
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // GestureDetector = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              onTap: () => setState(() => _currentIndex = 2),
              // Função da Linha: Le ou altera a aba ativa da navegacao principal.
              // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
              // onTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
              // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
              // 2 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: _buildNavItem(Icons.grid_view, "Balc\u00e3o", 2),
              // Função da Linha: Monta ou chama um item visual da barra de navegacao inferior.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // buildNavItem = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // grid_view = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              // "Balc\u00e3o" = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
              // 2 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            GestureDetector(
            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
            // GestureDetector = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              onTap: () => setState(() => _currentIndex = 3),
              // Função da Linha: Le ou altera a aba ativa da navegacao principal.
              // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
              // onTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
              // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
              // 3 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: _buildNavItem(Icons.person_outline, "Perfil", 3),
              // Função da Linha: Monta ou chama um item visual da barra de navegacao inferior.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // buildNavItem = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // person_outline = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              // "Perfil" = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
              // 3 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
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

  Widget _buildBalcaoComTrava() {
  // Função da Linha: Monta a tela do balcao aplicando a regra de acesso do investidor.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildBalcaoComTrava = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final userId = FirebaseAuth.instance.currentUser?.uid;
    // Função da Linha: Acessa o usuario autenticado no Firebase Auth.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // userId = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // FirebaseAuth = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // instance = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // currentUser = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
    // uid = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (userId == null) return _buildBalcaoBloqueado();
    // Função da Linha: Monta o aviso mostrado quando o balcao esta bloqueado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // userId = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // == = Operador de Comparacao. Verifica igualdade entre dois valores.
    // null = Literal Nulo. Representa ausencia de valor.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // buildBalcaoBloqueado = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    return StreamBuilder<QuerySnapshot>(
    // Função da Linha: Reconstrui a interface conforme chegam dados assincronos do stream.
    // StreamBuilder = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // <QuerySnapshot> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de StreamBuilder.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      stream: FirebaseFirestore.instance
      // Função da Linha: Acessa o Firestore para consultar investimentos do usuario.
      // stream = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // FirebaseFirestore = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // instance = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          .collection('users')
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // collection = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // 'users' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          .doc(userId)
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // doc = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // userId = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          .collection('investimentos')
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // collection = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // 'investimentos' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          .snapshots(),
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // snapshots = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
      builder: (context, snapshot) {
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // builder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      // snapshot = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
        if (snapshot.connectionState == ConnectionState.waiting) {
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // snapshot = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // connectionState = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // == = Operador de Comparacao. Verifica igualdade entre dois valores.
        // waiting = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
          return const Center(child: CircularProgressIndicator());
          // Função da Linha: Define o widget filho da propriedade atual.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // Center = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // CircularProgressIndicator = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
        }
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

        final docs = snapshot.data?.docs ?? [];
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
        // docs = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
        // snapshot = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // data = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
        // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
        // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
        // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
        // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
        final isInvestor = docs.any((doc) {
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
        // isInvestor = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
        // docs = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // any = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // doc = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
          final data = doc.data() as Map<String, dynamic>;
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // Map = Identificador de Classe de Colecao. Representa pares de chave e valor.
          // <String, dynamic> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de Map.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
          // data = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
          // doc = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // as = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
          return (data['tokensComprados'] ?? 0) > 0;
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // data = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
          // 'tokensComprados' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
          // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
          // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
          // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
        });
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

        if (isInvestor) {
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // isInvestor = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
          return const camila_market.BalcaoNegociacaoPage();
          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
          // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // camila_market = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // BalcaoNegociacaoPage = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
        }
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

        return _buildBalcaoBloqueado();
        // Função da Linha: Monta o aviso mostrado quando o balcao esta bloqueado.
        // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
        // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // buildBalcaoBloqueado = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      },
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  Widget _buildBalcaoBloqueado() {
  // Função da Linha: Monta o aviso mostrado quando o balcao esta bloqueado.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildBalcaoBloqueado = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    return Scaffold(
    // Função da Linha: Retorna a estrutura principal da tela.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Scaffold = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      backgroundColor: const Color(0xFFF8F9FB),
      // Função da Linha: Aplica uma cor ao elemento visual.
      // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
      // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // 0xFFF8F9FB = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      body: Center(
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // body = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
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
                width: 88,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 88 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                height: 88,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 88 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                decoration: BoxDecoration(
                // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
                // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  color: const Color(0xFFF3EDFF),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0xFFF3EDFF = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
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
                  boxShadow: [
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // boxShadow = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                    BoxShadow(
                    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                    // BoxShadow = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      color: const Color(0xFF512DA8).withValues(alpha: 0.10),
                      // Função da Linha: Aplica uma cor ao elemento visual.
                      // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      // 0xFF512DA8 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // withValues = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // alpha = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // 0.10 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      blurRadius: 24,
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // blurRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      offset: const Offset(0, 8),
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // offset = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      // 8 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
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
                  color: Color(0xFF512DA8),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0xFF512DA8 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  size: 42,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 42 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                ),
                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
              ),
              // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              const SizedBox(height: 28),
              // Função da Linha: Cria espaco fixo ou limita largura e altura.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 28 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              const Text(
              // Função da Linha: Cria um texto visivel na interface.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                'Balc\u00e3o Bloqueado',
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // 'Balc\u00e3o Bloqueado' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
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
                  color: Color(0xFF1D1D1F),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0xFF1D1D1F = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
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
              const SizedBox(height: 14),
              // Função da Linha: Cria espaco fixo ou limita largura e altura.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 14 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              const Text(
              // Função da Linha: Cria um texto visivel na interface.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                'Voc\u00ea precisa estudar uma startup e fazer seu '
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // 'Voc\u00ea precisa estudar uma startup e fazer seu ' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                'primeiro investimento atrav\u00e9s do Cat\u00e1logo para '
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // 'primeiro investimento atrav\u00e9s do Cat\u00e1logo para ' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                'desbloquear o Balc\u00e3o Global.',
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // 'desbloquear o Balc\u00e3o Global.' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
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
                  color: Color(0xFF6B7280),
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  // 0xFF6B7280 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  fontSize: 15,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 15 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  height: 1.45,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 1.45 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
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

  Widget _buildNavItem(IconData icon, String label, int index) {
  // Função da Linha: Monta ou chama um item visual da barra de navegacao inferior.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // buildNavItem = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // IconData = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // icon = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // , = Separador. Divide argumentos, parametros ou itens de lista.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // label = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // int = Tipo Inteiro. Representa numeros sem parte decimal.
  // index = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final isSelected = _currentIndex == index;
    // Função da Linha: Le ou altera a aba ativa da navegacao principal.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // isSelected = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // currentIndex = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // == = Operador de Comparacao. Verifica igualdade entre dois valores.
    // index = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (isSelected) {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // isSelected = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      return Container(
      // Função da Linha: Cria uma caixa configuravel de layout e estilo.
      // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
      // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // Função da Linha: Aplica espacamento interno ao widget filho.
        // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // symmetric = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // horizontal = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // 16 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        // vertical = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // 8 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        decoration: BoxDecoration(
        // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
        // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          color: const Color(0xFF512DA8),
          // Função da Linha: Aplica uma cor ao elemento visual.
          // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // 0xFF512DA8 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          borderRadius: BorderRadius.circular(20),
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // 20 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
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
            Icon(icon, color: Colors.white, size: 18),
            // Função da Linha: Mostra um icone visual na interface.
            // Icon = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            const SizedBox(width: 8),
            // Função da Linha: Cria espaco fixo ou limita largura e altura.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 8 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            Text(
            // Função da Linha: Cria um texto visivel na interface.
            // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              label,
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // label = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              style: const TextStyle(
              // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
              // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                color: Colors.white,
                // Função da Linha: Aplica uma cor ao elemento visual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                fontWeight: FontWeight.bold,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // bold = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
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
    } else {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // else = Ramo Alternativo. Executa quando o if anterior e falso.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      return Container(
      // Função da Linha: Cria uma caixa configuravel de layout e estilo.
      // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
      // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        padding: const EdgeInsets.all(8),
        // Função da Linha: Aplica espacamento interno ao widget filho.
        // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // all = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // 8 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        color: Colors.transparent,
        // Função da Linha: Aplica uma cor ao elemento visual.
        // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // transparent = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        child: Icon(icon, color: Colors.white),
        // Função da Linha: Mostra um icone visual na interface.
        // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // Icon = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      );
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    }
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
