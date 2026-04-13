import 'package:flutter/material.dart';
import 'features/catalog/services/startup_service.dart';

void main() {
  runApp(const MesclaInvestApp());
}

class MesclaInvestApp extends StatelessWidget {
  const MesclaInvestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MesclaInvest',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const TesteConexaoScreen(),
    );
  }
}

class TesteConexaoScreen extends StatelessWidget {
  const TesteConexaoScreen({super.key});

  void testarConexao() async {
    print('⏳ Iniciando requisição para o Backend...');
    final service = StartupService();
    try {
      final startups = await service.fetchStartups();
      print('🚀 SUCESSO! Startups encontradas: ${startups.length}');
      for (var s in startups) {
        print('✅ Startup: ${s.name} - Preço: R\$ ${s.currentTokenPrice}');
      }
    } catch (e) {
      print('❌ Erro no teste: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Teste de Integração PI-III')),
      body: Center(
        child: ElevatedButton(
          onPressed: testarConexao,
          child: const Text('Puxar Startups do Backend', style: TextStyle(fontSize: 18)),
        ),
      ),
    );
  }
}