
import 'package:flutter/material.dart';

class StartupListScreen extends StatelessWidget {
  const StartupListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Startups'),
      ),
      body: ListView.builder(
        itemCount: 5, // Número fictício para testar a rolagem
        itemBuilder: (context, index) {
          // TO Do: SUATAREFAATRIBUÍDA - Implementar o Card da Startup aqui.
          // Substitua este Container pelo layout do Figma (Nome, Descrição curta, Estágio, etc).
          return Container(
            margin: const EdgeInsets.all(8.0),
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: const Text('Card da Startup (Desenhar UI)'),
          );
        },
      ),
    );
  }
}