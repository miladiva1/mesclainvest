import 'package:cloud_functions/cloud_functions.dart';

class ExchangeService {
  final FirebaseFunctions _functions = FirebaseFunctions.instance;

  Future<void> buyTokens(String startupId, int tokenQuantity) async {
    try {
      final HttpsCallable callable = _functions.httpsCallable('exchange-buyTokens');
      final result = await callable.call(<String, dynamic>{
        'startupId': startupId,
        'tokenQuantity': tokenQuantity,
      });
      
      print('Status da Compra: ${result.data['status']}');
      
    } catch (e) {
      print('Erro ao comprar tokens: $e');
      rethrow; // Repassa o erro para a tela (ex: "Saldo insuficiente")
    }
  }
}