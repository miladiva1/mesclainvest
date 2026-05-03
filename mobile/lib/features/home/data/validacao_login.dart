import 'package:cloud_functions/cloud_functions.dart';

class EnviarDados {
  // corrigir que criou na regiao errada
  final functions = FirebaseFunctions.instanceFor(region: 'us-central1');

  // nesse caso como eu to retornando tanto os dados caso de erro quanto o bool,
  // eu preciso que seja uma lista
  Future<Map<String, dynamic>> fazerLogin(String username, String password) async {
    final mandar = functions.httpsCallable('validacao-validacao');

    // mandando para o backend e aguardando o resultado
    final resultado = await mandar.call({
      'username': username,
      'password': password,
    });

    // se nao retornar o resultado vai dar erro e nao vai conseguir acessar
    return Map<String, dynamic>.from(resultado.data);
  }
}