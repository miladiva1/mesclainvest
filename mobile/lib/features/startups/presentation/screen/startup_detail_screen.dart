/*Vinícius */
/*Explicação: 
  Uma página para servir de modelo para outras páginas, para facilitar pra o membro
  que for implementar o código*/


import 'package:flutter/material.dart';

class StartupDetailScreen extends StatelessWidget {
  const StartupDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da Startup'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TO dO: SUATERAFA - Implementar a UI dos detalhes aqui.
            // Siga o Figma: Adicione a imagem de capa, sumário executivo, estrutura societária, etc.
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey[300],
              child: const Center(child: Text('Imagem de Capa (Placeholder)')),
            ),
            const SizedBox(height: 16),
            const Text(
              'Nome da Startup Fictícia',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text('Aqui vai o Sumário Executivo desenhado conforme o Figma...'),
            // Continue adicionando os componentes visuais abaixo
          ],
        ),
      ),
    );
  }
}