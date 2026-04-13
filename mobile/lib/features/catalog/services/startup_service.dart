// Vinícius
/* Explicação do código:
 *  
 *  */

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/startup_model.dart';

class StartupService {
  // ATENÇÃO: Use 10.0.2.2 se estiver no emulador Android 
  // ou o IP da sua máquina se estiver no celular físico.
  /*Como possibilitar o emulador android enxergar o servidor rodando no meu Debian
   * E para isso usamos uma rota especial do Android */
  final String _baseUrl = 'http://10.0.2.2:3000/api/startups';

  //final String _baseUrlothers = 'http://localhost:3000/api/startups';

  Future<List<StartupModel>> fetchStartups() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        List<dynamic> body = jsonDecode(response.body);
        return body.map((dynamic item) => StartupModel.fromJson(item)).toList();
      } else {
        throw Exception('Falha ao carregar startups');
      }
    } catch (e) {
      throw Exception('Erro de conexão: $e');
    }
  }
}