import 'package:flutter/material.dart';
// Função da Linha: Importa package:flutter/material.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:flutter/material.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
import 'package:mobile/services/auth_service.dart';
// Função da Linha: Importa package:mobile/services/auth_service.dart para permitir o uso das classes e funcoes desse pacote.
// import = Diretiva de Importacao. Carrega recursos de outro pacote ou arquivo.
// 'package:mobile/services/auth_service.dart' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

const _brandPurple = Color(0xFF5A3296);
// Função da Linha: Declara a cor roxa principal usada na tela de cadastro.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// brandPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// 0xFF5A3296 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _dividerColor = Color(0xFFE6E1E1);
// Função da Linha: Declara a cor usada nas divisorias da tela de cadastro.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// dividerColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// 0xFFE6E1E1 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _fieldBackground = Color(0xFFF9F8F8);
// Função da Linha: Declara a cor de fundo dos campos do formulario.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// fieldBackground = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// 0xFFF9F8F8 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _fieldHintColor = Color(0xFFB9B1B1);
// Função da Linha: Declara a cor usada nos textos de dica e icones dos campos.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// fieldHintColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// 0xFFB9B1B1 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _fieldTextColor = Color(0xFF6F6969);
// Função da Linha: Declara a cor do texto digitado nos campos.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// fieldTextColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// 0xFF6F6969 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _focusedBorderColor = Color(0x335A3296);
// Função da Linha: Declara a cor da borda quando o campo esta em foco.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// focusedBorderColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// Color = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
// ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
// 0x335A3296 = Literal Hexadecimal. Representa um valor numerico usado principalmente para cores.
// ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _headingFontFamily = 'MarcellusSC';
// Função da Linha: Declara o nome da fonte usada no titulo do cadastro.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// headingFontFamily = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// 'MarcellusSC' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
const _serifFontFamily = 'Marcellus';
// Função da Linha: Declara o nome da fonte usada em rotulos e botoes.
// const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// serifFontFamily = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
// 'Marcellus' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
// ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.


class SignUpPage extends StatefulWidget {
// Função da Linha: Define a classe da tela de cadastro do usuario.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// SignUpPage = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// StatefulWidget = Classe do Flutter. Define um widget com estado mutavel.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  const SignUpPage({super.key});
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // SignUpPage = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
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
  State<SignUpPage> createState() => _SignUpPageState();
  // Função da Linha: Liga o widget ao objeto State responsavel pelos dados mutaveis.
  // State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
  // <SignUpPage> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // createState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // SignUpPageState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
}
// Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
// } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

class _SignUpPageState extends State<SignUpPage> {
// Função da Linha: Define o estado privado que controla formulario, validacao e envio do cadastro.
// State = Identificador de Classe do Flutter. Guarda dados mutaveis de um StatefulWidget.
// <SignUpPage> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de State.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
// SignUpPageState = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  bool _obscurePassword = true;
  // Função da Linha: Guarda se o campo de senha deve esconder ou mostrar o texto.
  // bool = Tipo Booleano. Aceita apenas verdadeiro ou falso.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // obscurePassword = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // true = Literal Booleano. Representa valor verdadeiro.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  final AuthService _authService = AuthService();
  // Função da Linha: Cria ou usa o servico responsavel pela autenticacao.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // AuthService = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // authService = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  bool _isLoading = false;
  // Função da Linha: Guarda se o cadastro esta em carregamento.
  // bool = Tipo Booleano. Aceita apenas verdadeiro ou falso.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // isLoading = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // false = Literal Booleano. Representa valor falso.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  final _nomeController = TextEditingController();
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // nomeController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // TextEditingController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final _emailController = TextEditingController();
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // emailController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // TextEditingController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final _cpfController = TextEditingController();
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // cpfController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // TextEditingController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final _telefoneController = TextEditingController();
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // telefoneController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // TextEditingController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final _senhaController = TextEditingController();
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // senhaController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
  // TextEditingController = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
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
    _nomeController.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // nomeController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _emailController.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // emailController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _cpfController.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // cpfController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _telefoneController.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // telefoneController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // dispose = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    _senhaController.dispose();
    // Função da Linha: Libera o recurso usado pelo controlador ou pelo estado herdado.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // senhaController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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

  Future<void> _concluirCadastro() async {
  // Função da Linha: Define a funcao assincrona que valida os campos e cria a conta do usuario.
  // Future = Identificador de Classe (Objeto de Proxy). Representa uma operacao assincrona que entregara um valor depois.
  // <void> = Tipo de Parametro Generico. Define qual tipo de dado fica dentro de Future.
  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // concluirCadastro = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // async = Modificador de Funcao Assincrona. Permite usar await dentro da funcao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    final email = _emailController.text.trim();
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // email = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // emailController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    final senha = _senhaController.text;
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // senha = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // senhaController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    final nome = _nomeController.text.trim();
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // nome = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // nomeController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // text = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // trim = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    if (nome.isEmpty || email.isEmpty || senha.isEmpty) {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // nome = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // isEmpty = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // || = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // email = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // senha = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      _showError('Preencha todos os campos obrigat\u00f3rios.');
      // Função da Linha: Chama ou define a rotina que mostra uma mensagem de erro ao usuario.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // showError = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // 'Preencha todos os campos obrigat\u00f3rios.' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      return;
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    }
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

    setState(() => _isLoading = true);
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
    // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
    // isLoading = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // true = Literal Booleano. Representa valor verdadeiro.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    try {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // try = Bloco Protegido. Envolve codigo que pode gerar erro.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      final credential = await _authService.signUpWithEmailAndPassword(
      // Função da Linha: Cria ou usa o servico responsavel pela autenticacao.
      // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
      // credential = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
      // await = Operador Assincrono. Pausa a execucao ate o Future terminar.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // authService = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // signUpWithEmailAndPassword = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        email: email,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // email = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        password: senha,
        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
        // password = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // senha = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
      );
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

      await credential.user?.updateDisplayName(nome);
      // Função da Linha: Atualiza o nome visivel do usuario autenticado.
      // await = Operador Assincrono. Pausa a execucao ate o Future terminar.
      // credential = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // user = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
      // updateDisplayName = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // nome = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
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

      Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      // Função da Linha: Executa uma navegacao entre telas ou altera a pilha de rotas.
      // Navigator = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // pushNamedAndRemoveUntil = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      // '/main' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // route = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
      // false = Literal Booleano. Representa valor falso.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    } catch (e) {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // catch = Captura de Erro. Recebe excecoes geradas no bloco try.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // e = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      if (!mounted) return;
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      // ! = Operador de Negacao. Inverte um valor booleano.
      // mounted = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
      // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
      _showError(e.toString().replaceFirst('Exception: ', ''));
      // Função da Linha: Chama ou define a rotina que mostra uma mensagem de erro ao usuario.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // showError = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // e = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
      // toString = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // replaceFirst = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // 'Exception: ' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // , = Separador. Divide argumentos, parametros ou itens de lista.
      // '' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    } finally {
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
    // finally = Bloco Final. Executa ao fim do try/catch.
    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
      if (mounted) setState(() => _isLoading = false);
      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
      // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
      // if = Estrutura Condicional. Executa um trecho quando a condicao for verdadeira.
      // mounted = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
      // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
      // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
      // isLoading = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
      // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
      // false = Literal Booleano. Representa valor falso.
      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
    }
    // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  }
  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.

  void _showError(String message) {
  // Função da Linha: Chama ou define a rotina que mostra uma mensagem de erro ao usuario.
  // void = Tipo de Retorno Vazio. Indica que a funcao nao devolve valor.
  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
  // showError = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // message = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    ScaffoldMessenger.of(context).showSnackBar(
    // Função da Linha: Configura uma mensagem temporaria exibida ao usuario.
    // ScaffoldMessenger = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // showSnackBar = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
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
        backgroundColor: Colors.red.shade700,
        // Função da Linha: Aplica uma cor ao elemento visual.
        // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // red = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // shade700 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        behavior: SnackBarBehavior.floating,
        // Função da Linha: Configura uma mensagem temporaria exibida ao usuario.
        // behavior = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // SnackBarBehavior = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
        // floating = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
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
    final mediaQuery = MediaQuery.of(context);
    // Função da Linha: Le informacoes de tamanho e area segura da tela atual.
    // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
    // mediaQuery = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // of = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
    // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

    return Scaffold(
    // Função da Linha: Retorna a estrutura principal da tela.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
    // Scaffold = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
      body: LayoutBuilder(
      // Função da Linha: Permite montar layout usando as restricoes de tamanho recebidas.
      // body = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
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
            child: ConstrainedBox(
            // Função da Linha: Define o widget filho da propriedade atual.
            // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // ConstrainedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              constraints: const BoxConstraints(maxWidth: 390),
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // constraints = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // BoxConstraints = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // maxWidth = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // 390 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              child: SizedBox(
              // Função da Linha: Cria espaco fixo ou limita largura e altura.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                width: double.infinity,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // double = Tipo Decimal. Representa numeros com casas decimais.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // infinity = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                height: constraints.maxHeight,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // constraints = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                // maxHeight = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                child: Material(
                // Função da Linha: Define o widget filho da propriedade atual.
                // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // Material = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                  color: Colors.white,
                  // Função da Linha: Aplica uma cor ao elemento visual.
                  // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                  // white = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                  child: Column(
                  // Função da Linha: Organiza os widgets filhos no eixo vertical.
                  // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                  // Column = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                    children: [
                    // Função da Linha: Abre a lista de widgets filhos.
                    // children = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                    // [ = Delimitador de Lista. Inicia uma lista ou acesso por indice.
                      SizedBox(height: mediaQuery.padding.top),
                      // Função da Linha: Aplica espacamento interno ao widget filho.
                      // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                      // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                      // mediaQuery = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                      // padding = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // top = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      SizedBox(
                      // Função da Linha: Cria espaco fixo ou limita largura e altura.
                      // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        height: 52,
                        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 52 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        child: Align(
                        // Função da Linha: Define o widget filho da propriedade atual.
                        // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // Align = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          alignment: Alignment.centerLeft,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // alignment = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                          // centerLeft = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          child: Padding(
                          // Função da Linha: Aplica espacamento interno ao widget filho.
                          // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // Padding = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                            // , = Separador. Divide argumentos, parametros ou itens de lista.
                            child: IconButton(
                            // Função da Linha: Cria um botao interativo para o usuario.
                            // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                            // IconButton = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                              onPressed: () => Navigator.maybePop(context),
                              // Função da Linha: Executa uma navegacao entre telas ou altera a pilha de rotas.
                              // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                              // onPressed = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // => = Operador de Retorno Curto. Liga uma funcao a uma expressao unica.
                              // Navigator = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                              // maybePop = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // context = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                              padding: EdgeInsets.zero,
                              // Função da Linha: Aplica espacamento interno ao widget filho.
                              // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                              // zero = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                              constraints: const BoxConstraints(),
                              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                              // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                              // constraints = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                              // BoxConstraints = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                              splashRadius: 20,
                              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                              // splashRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // 20 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                              icon: const Icon(
                              // Função da Linha: Mostra um icone visual na interface.
                              // icon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                Icons.arrow_back,
                                // Função da Linha: Organiza os widgets filhos no eixo horizontal.
                                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // arrow_back = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                color: Colors.black,
                                // Função da Linha: Aplica uma cor ao elemento visual.
                                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // black = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
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
                      const Divider(
                      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                      // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                      // Divider = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        height: 1,
                        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        thickness: 1,
                        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                        // thickness = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        color: _dividerColor,
                        // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                        // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                        // dividerColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                      ),
                      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      Expanded(
                      // Função da Linha: Faz o filho ocupar o espaco restante disponivel.
                      // Expanded = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        child: SingleChildScrollView(
                        // Função da Linha: Permite rolagem quando o conteudo ultrapassa a tela.
                        // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // SingleChildScrollView = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          padding: const EdgeInsets.fromLTRB(32, 18, 32, 24),
                          // Função da Linha: Aplica espacamento interno ao widget filho.
                          // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                          // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                          // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          // 32 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
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
                              const Center(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                              // Center = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                child: Text(
                                // Função da Linha: Cria um texto visivel na interface.
                                // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                  'CRIE SUA CONTA',
                                  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                  // 'CRIE SUA CONTA' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                                  style: TextStyle(
                                  // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
                                  // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                    color: _brandPurple,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                    // brandPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    fontSize: 24.5,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // 24.5 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    fontWeight: FontWeight.w400,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                    // w400 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    letterSpacing: 0.45,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // letterSpacing = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // 0.45 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    height: 1.0,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // 1.0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    fontFamily: _headingFontFamily,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // fontFamily = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                    // headingFontFamily = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                              const SizedBox(height: 34),
                              // Função da Linha: Cria espaco fixo ou limita largura e altura.
                              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                              // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                              // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // 34 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                              // , = Separador. Divide argumentos, parametros ou itens de lista.
                              PrototypeField(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // PrototypeField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                label: 'Nome Completo',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // label = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'Nome Completo' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                hintText: 'Jualino Correia Silva',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'Jualino Correia Silva' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                prefixIcon: Icons.person_outline_rounded,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // prefixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // person_outline_rounded = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                keyboardType: TextInputType.name,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // keyboardType = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // TextInputType = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // name = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                controller: _nomeController,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                // nomeController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                              PrototypeField(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // PrototypeField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                label: 'E-mail',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // label = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'E-mail' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                hintText: 'minhaconta@gmail.com',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'minhaconta@gmail.com' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                prefixIcon: Icons.mail_outline_rounded,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // prefixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // mail_outline_rounded = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                keyboardType: TextInputType.emailAddress,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // keyboardType = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // TextInputType = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // emailAddress = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                controller: _emailController,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                // emailController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                              PrototypeField(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // PrototypeField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                label: 'CPF',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // label = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'CPF' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                hintText: '230.432.632-74',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // '230.432.632-74' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                prefixIcon: Icons.badge_outlined,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // prefixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // badge_outlined = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                keyboardType: TextInputType.number,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // keyboardType = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // TextInputType = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // number = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                controller: _cpfController,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                // cpfController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                              PrototypeField(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // PrototypeField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                label: 'Telefone Celular',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // label = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'Telefone Celular' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                hintText: '(19) 64232-8473',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // '(19) 64232-8473' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                prefixIcon: Icons.phone_android_rounded,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // prefixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // phone_android_rounded = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                keyboardType: TextInputType.phone,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // keyboardType = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // TextInputType = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // phone = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                controller: _telefoneController,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                // telefoneController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                              PrototypeField(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // PrototypeField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                label: 'Senha',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // label = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'Senha' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                hintText: 'Senha',
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // 'Senha' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                prefixIcon: Icons.lock_outline_rounded,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // prefixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                // lock_outline_rounded = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                obscureText: _obscurePassword,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // obscureText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                // obscurePassword = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                controller: _senhaController,
                                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                // senhaController = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                // , = Separador. Divide argumentos, parametros ou itens de lista.
                                suffixIcon: IconButton(
                                // Função da Linha: Cria um botao interativo para o usuario.
                                // suffixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                // IconButton = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                  onPressed: () {
                                  // Função da Linha: Liga uma acao do usuario a uma funcao de callback.
                                  // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                                  // onPressed = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
                                    setState(() {
                                    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                    // () = Lista de Parametros Formais. Vazia, pois nenhum dado e exigido nessa chamada ou funcao.
                                    // setState = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                    // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
                                      _obscurePassword = !_obscurePassword;
                                      // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                      // obscurePassword = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                      // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
                                      // ! = Operador de Negacao. Inverte um valor booleano.
                                      // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
                                    });
                                    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                    // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
                                    // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                                    // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
                                  },
                                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                                  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
                                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                                  splashRadius: 18,
                                  // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                  // splashRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                                  icon: Icon(
                                  // Função da Linha: Mostra um icone visual na interface.
                                  // icon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                    _obscurePassword
                                    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                    // obscurePassword = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                        ? Icons.visibility_off_outlined
                                        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                        // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                                        // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                        // visibility_off_outlined = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                        : Icons.visibility_outlined,
                                        // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                        // Icons = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                        // visibility_outlined = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    size: 18,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // 18 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    color: _fieldHintColor,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                    // fieldHintColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                      ),
                      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                      // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                      Container(
                      // Função da Linha: Cria uma caixa configuravel de layout e estilo.
                      // Container = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                        decoration: const BoxDecoration(
                        // Função da Linha: Define fundo, borda, raio ou sombra de uma caixa.
                        // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                        // BoxDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          border: Border(
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // border = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                            top: BorderSide(color: _dividerColor),
                            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                            // top = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                            // BorderSide = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                            // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                            // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                            // dividerColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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
                        padding: EdgeInsets.fromLTRB(
                        // Função da Linha: Aplica espacamento interno ao widget filho.
                        // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                        // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                        // fromLTRB = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          32,
                          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                          // 32 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          22,
                          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                          // 22 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          32,
                          // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                          // 32 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          24 + mediaQuery.padding.bottom,
                          // Função da Linha: Aplica espacamento interno ao widget filho.
                          // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // mediaQuery = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                          // padding = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // bottom = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                        ),
                        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                        // , = Separador. Divide argumentos, parametros ou itens de lista.
                        child: SizedBox(
                        // Função da Linha: Cria espaco fixo ou limita largura e altura.
                        // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                        // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                          width: double.infinity,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // double = Tipo Decimal. Representa numeros com casas decimais.
                          // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                          // infinity = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          height: 44,
                          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                          // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // 44 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                          // , = Separador. Divide argumentos, parametros ou itens de lista.
                          child: _isLoading
                          // Função da Linha: Define o widget filho da propriedade atual.
                          // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                          // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                          // isLoading = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                              ? const Center(
                              // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                              // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
                              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                              // Center = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                  child: CircularProgressIndicator(
                                  // Função da Linha: Define o widget filho da propriedade atual.
                                  // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // CircularProgressIndicator = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                    color: _brandPurple,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                    // brandPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                  ),
                                  // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                                  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                                )
                                // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
                                // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
                              : ElevatedButton(
                              // Função da Linha: Cria um botao interativo para o usuario.
                              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                              // ElevatedButton = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                  onPressed: _concluirCadastro,
                                  // Função da Linha: Liga uma acao do usuario a uma funcao de callback.
                                  // onPressed = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                  // concluirCadastro = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                  // , = Separador. Divide argumentos, parametros ou itens de lista.
                                  style: ElevatedButton.styleFrom(
                                  // Função da Linha: Cria um botao interativo para o usuario.
                                  // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // ElevatedButton = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
                                  // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                  // styleFrom = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                    backgroundColor: _brandPurple,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // backgroundColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                    // brandPurple = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    elevation: 0,
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // elevation = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    shape: RoundedRectangleBorder(
                                    // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                    // shape = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                    // RoundedRectangleBorder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                    // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                      borderRadius: BorderRadius.circular(24),
                                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                      // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                      // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                      // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                      // 24 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
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
                                  child: const Text(
                                  // Função da Linha: Cria um texto visivel na interface.
                                  // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                  // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
                                  // Text = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
                                  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                                    'Concluir o Cadastro',
                                    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                                    // 'Concluir o Cadastro' = Literal String. Texto fixo usado como argumento, rota, label ou mensagem.
                                    // , = Separador. Divide argumentos, parametros ou itens de lista.
                                    style: TextStyle(
                                    // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
                                    // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                    // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
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
                                      fontSize: 18.5,
                                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                      // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                      // 18.5 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                                      fontWeight: FontWeight.w400,
                                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                      // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                      // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
                                      // w400 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                                      height: 1.0,
                                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                      // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                      // 1.0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
                                      // , = Separador. Divide argumentos, parametros ou itens de lista.
                                      fontFamily: _serifFontFamily,
                                      // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                                      // fontFamily = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                                      // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                                      // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                                      // serifFontFamily = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
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

class PrototypeField extends StatelessWidget {
// Função da Linha: Define um campo de formulario reutilizavel para a tela de cadastro.
// class = Palavra-chave de Classe. Inicia a declaracao de um novo tipo.
// PrototypeField = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
// extends = Palavra-chave de Heranca. Indica que a classe herda comportamento de outra.
// StatelessWidget = Classe do Flutter. Define um widget sem estado mutavel interno.
// { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
  const PrototypeField({
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
  // PrototypeField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
  // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
  // { = Delimitador de Bloco de Codigo. Inicia o corpo de uma classe, funcao ou estrutura.
    super.key,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // super = Referencia da Classe Pai. Acessa membros herdados.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // key = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    required this.label,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // required = Modificador de Parametro. Obriga o envio desse argumento nomeado.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // label = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    required this.hintText,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // required = Modificador de Parametro. Obriga o envio desse argumento nomeado.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // hintText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    required this.prefixIcon,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // required = Modificador de Parametro. Obriga o envio desse argumento nomeado.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // prefixIcon = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    this.keyboardType,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // keyboardType = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    this.obscureText = false,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // obscureText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // = = Operador de Atribuicao. Coloca o valor da direita no identificador da esquerda.
    // false = Literal Booleano. Representa valor falso.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    this.suffixIcon,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // suffixIcon = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
    this.controller,
    // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
    // this = Referencia da Instancia Atual. Acessa membros do proprio objeto.
    // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
    // controller = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
    // , = Separador. Divide argumentos, parametros ou itens de lista.
  });
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // } = Delimitador de Fechamento. Encerra o bloco de codigo atual.
  // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.

  final String label;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // label = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final String hintText;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // String = Tipo de Texto. Representa uma sequencia de caracteres.
  // hintText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final IconData prefixIcon;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // IconData = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // prefixIcon = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final TextInputType? keyboardType;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // TextInputType = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // keyboardType = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final bool obscureText;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // bool = Tipo Booleano. Aceita apenas verdadeiro ou falso.
  // obscureText = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final Widget? suffixIcon;
  // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // Widget = Identificador de Classe do Flutter. Representa uma parte visual da interface.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // suffixIcon = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
  // ; = Finalizador de Instrucao. Indica o fim da declaracao Dart.
  final TextEditingController? controller;
  // Função da Linha: Cria ou usa um controlador para ler e alterar texto de um campo.
  // final = Modificador de Atribuicao Unica. Permite definir o valor apenas uma vez.
  // TextEditingController = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
  // ? = Operador de Nulidade ou Condicao. Marca valor nullable ou parte de expressao condicional.
  // controller = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
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
    return Column(
    // Função da Linha: Organiza os widgets filhos no eixo vertical.
    // return = Palavra-chave de Retorno. Devolve um valor ou encerra a funcao.
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
            color: Colors.black,
            // Função da Linha: Aplica uma cor ao elemento visual.
            // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // Colors = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // black = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fontSize: 16.5,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 16.5 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fontWeight: FontWeight.w400,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fontWeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // w400 = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            height: 1.0,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 1.0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fontFamily: _serifFontFamily,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fontFamily = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
            // serifFontFamily = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
        ),
        // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        const SizedBox(height: 10),
        // Função da Linha: Cria espaco fixo ou limita largura e altura.
        // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
        // SizedBox = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
        // height = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
        // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
        // 10 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
        // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
        // , = Separador. Divide argumentos, parametros ou itens de lista.
        TextField(
        // Função da Linha: Cria um campo editavel para entrada de texto.
        // TextField = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
        // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
          controller: controller,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // controller = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          obscureText: obscureText,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // obscureText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          keyboardType: keyboardType,
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // keyboardType = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          style: const TextStyle(
          // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
          // style = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
          // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            color: _fieldTextColor,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
            // fieldTextColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fontSize: 15,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // 15 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
          ),
          // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
          // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
          // , = Separador. Divide argumentos, parametros ou itens de lista.
          decoration: InputDecoration(
          // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
          // decoration = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
          // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
          // InputDecoration = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
          // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            isDense: true,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // isDense = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // true = Literal Booleano. Representa valor verdadeiro.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            hintText: hintText,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // hintText = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            hintStyle: const TextStyle(
            // Função da Linha: Define cor, tamanho, peso e outras propriedades do texto.
            // hintStyle = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // TextStyle = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              color: _fieldHintColor,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
              // fieldHintColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              fontSize: 15,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // fontSize = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 15 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            filled: true,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // filled = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // true = Literal Booleano. Representa valor verdadeiro.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            fillColor: _fieldBackground,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // fillColor = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
            // fieldBackground = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            contentPadding: const EdgeInsets.symmetric(vertical: 14),
            // Função da Linha: Aplica espacamento interno ao widget filho.
            // contentPadding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // EdgeInsets = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
            // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
            // symmetric = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
            // vertical = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // 14 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            prefixIcon: Padding(
            // Função da Linha: Aplica espacamento interno ao widget filho.
            // prefixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // Padding = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              padding: const EdgeInsetsDirectional.only(start: 14, end: 10),
              // Função da Linha: Aplica espacamento interno ao widget filho.
              // padding = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // EdgeInsetsDirectional = Identificador de Classe, Tipo ou Widget. Nome de uma estrutura reutilizavel do Dart ou Flutter.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // only = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // start = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // 14 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              // end = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // 10 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              child: Icon(
              // Função da Linha: Mostra um icone visual na interface.
              // child = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // Icon = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                prefixIcon,
                // Função da Linha: Mantem a composicao visual, estado ou regra logica necessaria nesta parte do arquivo.
                // prefixIcon = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                color: _fieldHintColor,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                // fieldHintColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                size: 18,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // size = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
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
            prefixIconConstraints: const BoxConstraints(
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // prefixIconConstraints = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // BoxConstraints = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              minWidth: 0,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // minWidth = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              minHeight: 0,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // minHeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 0 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            suffixIcon: suffixIcon,
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // suffixIcon = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            suffixIconConstraints: const BoxConstraints(
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // suffixIconConstraints = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
            // BoxConstraints = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              minWidth: 42,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // minWidth = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 42 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              minHeight: 42,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // minHeight = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // 42 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            border: OutlineInputBorder(
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // border = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // OutlineInputBorder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              borderRadius: BorderRadius.circular(16),
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // 16 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              borderSide: BorderSide.none,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderSide = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // none = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            enabledBorder: OutlineInputBorder(
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // enabledBorder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // OutlineInputBorder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              borderRadius: BorderRadius.circular(16),
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // 16 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              borderSide: BorderSide.none,
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderSide = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // none = Identificador. Nome de variavel, parametro, membro ou propriedade usado na linha.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
            ),
            // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
            // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
            // , = Separador. Divide argumentos, parametros ou itens de lista.
            focusedBorder: OutlineInputBorder(
            // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
            // focusedBorder = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
            // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
            // OutlineInputBorder = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
            // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              borderRadius: BorderRadius.circular(16),
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderRadius = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // . = Operador de Acesso. Acessa membro, metodo ou propriedade de um objeto.
              // circular = Identificador de Funcao, Metodo ou Construtor. Nome da rotina ou objeto chamado nessa linha.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
              // 16 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
              // ) = Delimitador de Fechamento. Finaliza lista de parametros, argumentos ou expressao.
              // , = Separador. Divide argumentos, parametros ou itens de lista.
              borderSide: const BorderSide(
              // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
              // borderSide = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
              // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
              // const = Modificador de Constancia. Define valor conhecido e imutavel em tempo de compilacao.
              // ( = Delimitador de Abertura. Inicia lista de parametros, argumentos ou expressao.
                color: _focusedBorderColor,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // color = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // _ = Identificador de Privacidade. Indica que o item e privado dentro da biblioteca Dart.
                // focusedBorderColor = Identificador Privado sem o underline. Nome escolhido para representar o item no codigo.
                // , = Separador. Divide argumentos, parametros ou itens de lista.
                width: 1,
                // Função da Linha: Configura uma propriedade nomeada do widget ou objeto atual.
                // width = Identificador de Parametro Nomeado. Define qual propriedade esta recebendo valor.
                // : = Separador de Parametro Nomeado. Liga o nome da propriedade ao valor informado.
                // 1 = Literal Numerico. Representa um valor fixo usado em configuracao ou calculo.
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
      ],
      // Função da Linha: Fecha a estrutura aberta nas linhas anteriores.
      // ] = Delimitador de Lista. Encerra uma lista ou acesso por indice.
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
