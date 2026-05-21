//GUILHERME PREVENTI CORREIA

import 'dart:async';
// Função da Linha: Importa dart:async para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'dart:async' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

import 'package:firebase_auth/firebase_auth.dart';
// Função da Linha: Importa package:firebase_auth/firebase_auth.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:firebase_auth/firebase_auth.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:firebase_core/firebase_core.dart';
// Função da Linha: Importa package:firebase_core/firebase_core.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:firebase_core/firebase_core.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:flutter/material.dart';
// Função da Linha: Importa package:flutter/material.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:flutter/material.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:flutter/services.dart';
// Função da Linha: Importa package:flutter/services.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:flutter/services.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/core/routes/app_routes.dart';
// Função da Linha: Importa package:mobile/core/routes/app_routes.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/core/routes/app_routes.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/dashboard/widgets/home_investiment_sections.dart';
// Função da Linha: Importa package:mobile/features/dashboard/widgets/home_investiment_sections.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/dashboard/widgets/home_investiment_sections.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/dashboard/widgets/home_navigation_widgets.dart';
// Função da Linha: Importa package:mobile/features/dashboard/widgets/home_navigation_widgets.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/dashboard/widgets/home_navigation_widgets.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/startups/domain/startup.dart';
// Função da Linha: Importa package:mobile/features/startups/domain/startup.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/startups/domain/startup.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/features/startups/presentation/screen/list/startup_detail_screen.dart';
// Função da Linha: Importa package:mobile/features/startups/presentation/screen/list/startup_detail_screen.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/features/startups/presentation/screen/list/startup_detail_screen.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

Future<bool> _initializeFirebaseIfConfigured() async {
// Função da Linha: Define uma funcao privada que tenta inicializar o Firebase e informa se ele ficou disponivel.
// Future = Identificador de Classe (Objeto de Proxy). Representa uma operacao assincrona que entregara um valor depois.
// <bool> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de Future.
// () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// initializeFirebaseIfConfigured = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// async = Modificador de Funcao Assincrona. Permite usar await dentro da funcao.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  try {
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // try = Bloco Protegido. Envolve codigo que pode gerar erro.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    if (Firebase.apps.isEmpty) {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // Firebase = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // apps = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // isEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      await Firebase.initializeApp();
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // await = Operador Assincrono. Pausa a execucao ate o Future terminar.
      // Firebase = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // initializeApp = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    }
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    return Firebase.apps.isNotEmpty;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Firebase = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // apps = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // isNotEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  } catch (_) {
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  // catch = Captura de Erro. Recebe excecoes geradas no bloco try.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // _ = Identificador Privado. Nome acessivel apenas dentro da biblioteca Dart atual.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    return false;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // false = Literal Booleano. Representa valor falso.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

String? _firstString(Map<dynamic, dynamic> values, List<String> keys) {
// Função da Linha: Busca a primeira string valida em um mapa de argumentos.
// Map = Identificador de Classe de Colecao. Representa pares de chave e valor.
// <dynamic, dynamic> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de Map.
// List = Identificador de Classe de Colecao. Representa uma lista ordenada de elementos.
// <String> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de List.
// ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// firstString = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// , = Separador. Divide argumentos, parametros ou itens de lista.
// values = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
// keys = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  for (final key in keys) {
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // for = Estrutura de Repeticao. Percorre itens ou repete instrucoes.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // key = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // in = Operador de Iteracao. Indica a colecao percorrida pelo for.
  // keys = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final value = values[key];
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // value = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // values = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
    // key = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (value is String && value.trim().isNotEmpty) return value.trim();
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // value = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // is = Operador de Tipo. Testa se um valor pertence a determinado tipo.
    // String = Tipo de Texto. Representa uma sequencia de caracteres.
    // && = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // isNotEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  return null;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
  // null = Literal Nulo. Representa ausencia de valor.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

String? _normalizeUserName(String? value) {
// Função da Linha: Normaliza o nome do usuario removendo espacos desnecessarios.
// String = Tipo de Texto. Representa uma sequencia de caracteres.
// ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// normalizeUserName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// value = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  final trimmed = value?.trim();
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // trimmed = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // value = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
  // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  if (trimmed == null || trimmed.isEmpty) return null;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // trimmed = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // == = Operador de Comparacao. Verifica igualdade entre dois valores.
  // null = Literal Nulo. Representa ausencia de valor.
  // || = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
  // isEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  return trimmed;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
  // trimmed = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

String? _nameFromEmail(String? email) {
// Função da Linha: Gera um nome legivel usando a parte inicial do email.
// String = Tipo de Texto. Representa uma sequencia de caracteres.
// ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// nameFromEmail = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// email = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  final rawName = email?.split('@').first.trim();
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // rawName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // email = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
  // split = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // '@' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
  // first = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  if (rawName == null || rawName.isEmpty) return null;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // rawName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // == = Operador de Comparacao. Verifica igualdade entre dois valores.
  // null = Literal Nulo. Representa ausencia de valor.
  // || = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
  // isEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  return rawName
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
  // rawName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      .replaceAll(RegExp(r'[._-]+'), ' ')
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // replaceAll = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // RegExp = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // r = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // '[._-]+' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      // ' ' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      .split(RegExp(r'\s+'))
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // split = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // RegExp = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // r = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // '\s+' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      .where((word) => word.isNotEmpty)
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // where = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // word = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
      // isNotEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      .map((word) {
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // Map = Identificador de Classe de Colecao. Representa pares de chave e valor.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // word = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
        if (word.length == 1) return word.toUpperCase();
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
        // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
        // word = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // length = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // == = Operador de Comparacao. Verifica igualdade entre dois valores.
        // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
        // toUpperCase = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
        return '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}';
        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
        // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
        // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
        // '${word[0].toUpperCase()}${word.substring(1).toLowerCase()}' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
        // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      })
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      .join(' ');
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // join = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // ' ' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

class WalletDashboardScreen extends StatefulWidget {
// Função da Linha: Define a tela Home/dashboard carregada apos o login.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// WalletDashboardScreen = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// StatefulWidget = Classe do Flutter. Define um widget com estado mutavel.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  const WalletDashboardScreen({super.key});
  // Função da Linha: Insere ou referencia a tela Home/dashboard dentro do fluxo principal.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // WalletDashboardScreen = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
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
  State<WalletDashboardScreen> createState() => _WalletDashboardScreenState();
  // Função da Linha: Liga o widget ao objeto State responsavel pelos dados mutaveis.
  // State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
  // <WalletDashboardScreen> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // createState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // WalletDashboardScreenState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

class _WalletDashboardScreenState extends State<WalletDashboardScreen> {
// Função da Linha: Define o estado privado que controla dados do usuario, saldo e investimentos do dashboard.
// State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
// <WalletDashboardScreen> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// WalletDashboardScreenState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  bool _showBalance = true;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // bool = Tipo Booleano. Aceita apenas verdadeiro ou falso.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // showBalance = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // true = Literal Booleano. Representa valor verdadeiro.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  bool _didReadRouteUser = false;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // bool = Tipo Booleano. Aceita apenas verdadeiro ou falso.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // didReadRouteUser = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // false = Literal Booleano. Representa valor falso.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  String _userName = 'Usu\u00e1rio';
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // userName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // 'Usu\u00e1rio' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  String? _userPhotoUrl;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // userPhotoUrl = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  static const _screenBackground = Color(0xFFF5F5F5);
  // Função da Linha: Aplica uma cor ao elemento visual.
  // static = Modificador de Membro de Classe. Faz o valor pertencer a classe, nao a instancia.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // screenBackground = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // 0xFFF5F5F5 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  static const _primaryPurple = Color(0xFF5A2D91);
  // Função da Linha: Aplica uma cor ao elemento visual.
  // static = Modificador de Membro de Classe. Faz o valor pertencer a classe, nao a instancia.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // primaryPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // 0xFF5A2D91 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  static const _statusBlue = Color(0xFF4169FF);
  // Função da Linha: Aplica uma cor ao elemento visual.
  // static = Modificador de Membro de Classe. Faz o valor pertencer a classe, nao a instancia.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // statusBlue = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // 0xFF4169FF = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  static const _positiveGreen = Color(0xFF18A71B);
  // Função da Linha: Aplica uma cor ao elemento visual.
  // static = Modificador de Membro de Classe. Faz o valor pertencer a classe, nao a instancia.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // positiveGreen = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // 0xFF18A71B = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  static const _softCard = Color(0xFFF7F7FA);
  // Função da Linha: Aplica uma cor ao elemento visual.
  // static = Modificador de Membro de Classe. Faz o valor pertencer a classe, nao a instancia.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // softCard = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // 0xFFF7F7FA = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  @override
  // Função da Linha: Informa ao Dart que o proximo metodo sobrescreve um metodo herdado.
  // @ = Marcador de Anotacao. Introduz metadados para a proxima declaracao.
  // override = Anotacao de Sobrescrita. Confirma que o membro substitui outro herdado.
  void didChangeDependencies() {
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // didChangeDependencies = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    super.didChangeDependencies();
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // super = Referencia da Classe Pai. Acessa membros herdados.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // didChangeDependencies = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (_didReadRouteUser) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // didReadRouteUser = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    _didReadRouteUser = true;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // didReadRouteUser = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // true = Literal Booleano. Representa valor verdadeiro.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _applyRouteUserData(ModalRoute.of(context)?.settings.arguments);
    // Função da Linha: Aplica nome e foto recebidos por argumentos de rota.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // applyRouteUserData = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // ModalRoute = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
    // settings = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // arguments = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    unawaited(_loadFirebaseUserData());
    // Função da Linha: Carrega dados do usuario autenticado no Firebase.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // unawaited = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // loadFirebaseUserData = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  void _toggleBalanceVisibility() {
  // Função da Linha: Alterna se o saldo da carteira aparece ou fica oculto.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // toggleBalanceVisibility = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    setState(() => _showBalance = !_showBalance);
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // showBalance = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // ! = Operador de Negacao. Inverte um valor booleano.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  void _showMessage(String message) {
  // Função da Linha: Mostra uma mensagem curta de feedback no dashboard.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // showMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    ScaffoldMessenger.of(context)
    // Função da Linha: Localiza o mensageiro da tela para exibir feedback visual.
    // ScaffoldMessenger = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      ..clearSnackBars()
      // Função da Linha: Configura uma mensagem temporaria exibida ao usuario.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // clearSnackBars = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      ..showSnackBar(
      // Função da Linha: Configura uma mensagem temporaria exibida ao usuario.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // showSnackBar = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        SnackBar(
        // Função da Linha: Configura uma mensagem temporaria exibida ao usuario.
        // SnackBar = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          content: Text(message),
          // Função da Linha: Cria um texto visivel na interface.
          // content = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          behavior: SnackBarBehavior.floating,
          // Função da Linha: Configura uma mensagem temporaria exibida ao usuario.
          // behavior = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // SnackBarBehavior = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
          // floating = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          duration: const Duration(milliseconds: 1600),
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // duration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          // milliseconds = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // 1600 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          shape: RoundedRectangleBorder(
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // shape = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // RoundedRectangleBorder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            borderRadius: BorderRadius.circular(14),
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // 14 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
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

  void _openRoute(String routeName) {
  // Função da Linha: Abre uma rota nomeada a partir do contexto atual.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // openRoute = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // routeName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    Navigator.of(context).pushNamed(routeName);
    // Função da Linha: Executa uma navegacao entre telas ou altera a pilha de rotas.
    // Navigator = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // pushNamed = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // routeName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  void _openStartupDetails(StartupDetail startup) {
  // Função da Linha: Abre a tela de detalhes da startup selecionada.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // openStartupDetails = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // StartupDetail = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // startup = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    Navigator.of(context).push(
    // Função da Linha: Executa uma navegacao entre telas ou altera a pilha de rotas.
    // Navigator = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // push = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      MaterialPageRoute<void>(
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // MaterialPageRoute = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
      // <void> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de MaterialPageRoute.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        builder: (_) => StartupDetailScreen(startup: startup),
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // builder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // _ = Identificador Privado. Nome acessivel apenas dentro da biblioteca Dart atual.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
        // StartupDetailScreen = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // startup = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
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

  void _reloadInvestments() {
  // Função da Linha: Forca um rebuild para recarregar visualmente os investimentos.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // reloadInvestments = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    setState(() {});
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  void _applyRouteUserData(Object? arguments) {
  // Função da Linha: Aplica nome e foto recebidos por argumentos de rota.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // applyRouteUserData = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // Object = Tipo Base. Permite receber qualquer objeto Dart.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // arguments = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    if (arguments is! Map) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // arguments = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // is = Operador de Tipo. Testa se um valor pertence a determinado tipo.
    // ! = Operador de Negacao. Inverte um valor booleano.
    // Map = Identificador de Classe de Colecao. Representa pares de chave e valor.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    final name = _firstString(arguments, const [
    // Função da Linha: Busca a primeira string valida em um mapa de argumentos.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // name = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // firstString = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // arguments = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
    // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
      'name',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'name' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'displayName',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'displayName' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'userName',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'userName' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'nome',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'nome' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    ]);
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    final photoUrl = _firstString(arguments, const [
    // Função da Linha: Busca a primeira string valida em um mapa de argumentos.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // photoUrl = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // firstString = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // arguments = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
    // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
      'photoUrl',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'photoUrl' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'photoURL',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'photoURL' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'avatarUrl',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'avatarUrl' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'profilePhotoUrl',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'profilePhotoUrl' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      'foto',
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // 'foto' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    ]);
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    if (name == null && photoUrl == null) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // name = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // == = Operador de Comparacao. Verifica igualdade entre dois valores.
    // null = Literal Nulo. Representa ausencia de valor.
    // && = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // photoUrl = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _userName = _normalizeUserName(name) ?? _userName;
    // Função da Linha: Normaliza o nome do usuario removendo espacos desnecessarios.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // userName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // normalizeUserName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // name = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _userPhotoUrl = photoUrl ?? _userPhotoUrl;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // userPhotoUrl = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // photoUrl = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  Future<void> _loadFirebaseUserData() async {
  // Função da Linha: Carrega dados do usuario autenticado no Firebase.
  // Future = Identificador de Classe (Objeto de Proxy). Representa uma operacao assincrona que entregara um valor depois.
  // <void> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de Future.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // loadFirebaseUserData = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // async = Modificador de Funcao Assincrona. Permite usar await dentro da funcao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final initialized = await _initializeFirebaseIfConfigured().timeout(
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // initialized = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // await = Operador Assincrono. Pausa a execucao ate o Future terminar.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // initializeFirebaseIfConfigured = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // timeout = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      const Duration(seconds: 6),
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
      // Duration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // seconds = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // 6 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      onTimeout: () => false,
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // onTimeout = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
      // false = Literal Booleano. Representa valor falso.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
    );
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (!initialized) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // ! = Operador de Negacao. Inverte um valor booleano.
    // initialized = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    final user = FirebaseAuth.instance.currentUser;
    // Função da Linha: Acessa o usuario autenticado no Firebase Auth.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // FirebaseAuth = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // instance = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // currentUser = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    if (user == null) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // == = Operador de Comparacao. Verifica igualdade entre dois valores.
    // null = Literal Nulo. Representa ausencia de valor.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    final resolvedName =
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // resolvedName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
        _normalizeUserName(user.displayName) ??
        // Função da Linha: Normaliza o nome do usuario removendo espacos desnecessarios.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // normalizeUserName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // displayName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
        _nameFromEmail(user.email) ??
        // Função da Linha: Gera um nome legivel usando a parte inicial do email.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // nameFromEmail = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // email = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
        _normalizeUserName(user.email);
        // Função da Linha: Normaliza o nome do usuario removendo espacos desnecessarios.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // normalizeUserName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // email = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    if (!mounted) return;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // ! = Operador de Negacao. Inverte um valor booleano.
    // mounted = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    setState(() {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      _userName = resolvedName ?? _userName;
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // userName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
      // resolvedName = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      _userPhotoUrl = user.photoURL ?? _userPhotoUrl;
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // userPhotoUrl = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
      // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // photoURL = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ?? = Operador de Coalescencia Nula. Usa o valor da direita se o da esquerda for nulo.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    });
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
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
    return AnnotatedRegion<SystemUiOverlayStyle>(
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // AnnotatedRegion = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // <SystemUiOverlayStyle> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de AnnotatedRegion.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      value: SystemUiOverlayStyle.dark,
      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
      // value = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // SystemUiOverlayStyle = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // dark = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      child: Scaffold(
      // Função da Linha: Cria a base visual da tela com corpo e barras.
      // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
      // Scaffold = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        backgroundColor: _screenBackground,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
        // screenBackground = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        body: SafeArea(
        // Função da Linha: Evita que o conteudo fique sob areas do sistema.
        // body = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // SafeArea = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          child: LayoutBuilder(
          // Função da Linha: Permite montar layout usando as restricoes de tamanho recebidas.
          // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // LayoutBuilder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            builder: (context, constraints) {
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // builder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            // constraints = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
              final screenWidth = constraints.maxWidth < 390
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
              // screenWidth = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
              // constraints = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // maxWidth = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // 390 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  ? constraints.maxWidth
                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                  // constraints = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // maxWidth = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  : 390.0;
                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // 390.0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

              return Align(
              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
              // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
              // Align = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                alignment: Alignment.topCenter,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // alignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // topCenter = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                child: SizedBox(
                // Função da Linha: Cria espaco fixo ou limita largura e altura.
                // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  width: screenWidth,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // screenWidth = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  height: constraints.maxHeight,
                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                  // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // constraints = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // maxHeight = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  child: SingleChildScrollView(
                  // Função da Linha: Permite rolagem quando o conteudo ultrapassa a tela.
                  // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // SingleChildScrollView = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    physics: const BouncingScrollPhysics(),
                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                    // physics = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                    // BouncingScrollPhysics = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    padding: const EdgeInsets.fromLTRB(18, 18, 18, 24),
                    // Função da Linha: Aplica espacamento interno ao widget filho.
                    // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                    // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                    // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                    // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                    child: Column(
                    // Função da Linha: Organiza os widgets filhos no eixo vertical.
                    // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // Column = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                      // crossAxisAlignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // stretch = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      children: [
                      // Função da Linha: Abre a lista de widgets filhos.
                      // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                        HomeHeader(
                        // Função da Linha: Monta o cabecalho do dashboard com dados do usuario.
                        // HomeHeader = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          primaryPurple: _primaryPurple,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // primaryPurple = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // primaryPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          userName: _userName,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // userName = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // userName = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          userPhotoUrl: _userPhotoUrl,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // userPhotoUrl = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // userPhotoUrl = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          showBalance: _showBalance,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // showBalance = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // showBalance = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onToggleVisibility: _toggleBalanceVisibility,
                          // Função da Linha: Alterna se o saldo da carteira aparece ou fica oculto.
                          // onToggleVisibility = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // toggleBalanceVisibility = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onNotificationsTap: () =>
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                          // onNotificationsTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                              _openRoute(AppRoutes.notificacoes),
                              // Função da Linha: Abre uma rota nomeada a partir do contexto atual.
                              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                              // openRoute = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                              // AppRoutes = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                              // notificacoes = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                        ),
                        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        const SizedBox(height: 24),
                        // Função da Linha: Cria espaco fixo ou limita largura e altura.
                        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                        // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        WalletCard(
                        // Função da Linha: Monta o card principal da carteira.
                        // WalletCard = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          primaryPurple: _primaryPurple,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // primaryPurple = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // primaryPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          showBalance: _showBalance,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // showBalance = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // showBalance = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onCardTap: () => _openRoute(AppRoutes.carteira),
                          // Função da Linha: Abre uma rota nomeada a partir do contexto atual.
                          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                          // onCardTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // openRoute = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // AppRoutes = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                          // carteira = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onMoreTap: () => _showMessage(
                          // Função da Linha: Mostra uma mensagem curta de feedback no dashboard.
                          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                          // onMoreTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // showMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                            'Op\u00e7\u00f5es da carteira',
                            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                            // 'Op\u00e7\u00f5es da carteira' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                            // , = Separador. Divide argumentos, parametros ou itens de lista.
                          ),
                          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                        ),
                        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        const SizedBox(height: 26),
                        // Função da Linha: Cria espaco fixo ou limita largura e altura.
                        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                        // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 26 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        QuickActions(onRouteTap: _openRoute),
                        // Função da Linha: Abre uma rota nomeada a partir do contexto atual.
                        // QuickActions = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        // onRouteTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                        // openRoute = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        const SizedBox(height: 24),
                        // Função da Linha: Cria espaco fixo ou limita largura e altura.
                        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                        // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        FirestoreInvestmentSections(
                        // Função da Linha: Monta as secoes de investimentos vindas do Firestore.
                        // FirestoreInvestmentSections = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          userId: FirebaseAuth.instance.currentUser?.uid,
                          // Função da Linha: Acessa o usuario autenticado no Firebase Auth.
                          // userId = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // FirebaseAuth = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                          // instance = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // currentUser = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                          // uid = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          backgroundColor: _softCard,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // softCard = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          statusColor: _statusBlue,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // statusColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // statusBlue = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          growthColor: _positiveGreen,
                          // Função da Linha: Organiza os widgets filhos no eixo horizontal.
                          // growthColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // positiveGreen = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onRetry: _reloadInvestments,
                          // Função da Linha: Forca um rebuild para recarregar visualmente os investimentos.
                          // onRetry = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // reloadInvestments = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onViewAllTap: () =>
                          // Função da Linha: Liga uma acao do usuario a uma funcao de callback.
                          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                          // onViewAllTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                              _openRoute(AppRoutes.catalogo),
                              // Função da Linha: Abre uma rota nomeada a partir do contexto atual.
                              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                              // openRoute = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                              // AppRoutes = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                              // catalogo = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onStartupTap: _openStartupDetails,
                          // Função da Linha: Abre a tela de detalhes da startup selecionada.
                          // onStartupTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // openStartupDetails = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          onMoreTap: () => _showMessage(
                          // Função da Linha: Mostra uma mensagem curta de feedback no dashboard.
                          // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                          // onMoreTap = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // showMessage = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                            'Op\u00e7\u00f5es dos investimentos',
                            // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                            // 'Op\u00e7\u00f5es dos investimentos' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
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
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
