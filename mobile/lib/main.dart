/*Não escreva código nesta tela, use o caminho que eu instruí por email! 
cd lib/features/startups/presentation/screen
E dentro de screen (telas), é onde você vai desenvolver sua tela que eu tiver 
atribuído a você!
*/



import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'firebase_options.dart'; // Será usado quando conectarmos a nuvem real

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // A inicialização real do Firebase ficará aqui na próxima etapa de infraestrutura
  
  runApp(const MesclaInvestApp());
}

class MesclaInvestApp extends StatelessWidget {
  const MesclaInvestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MesclaInvest',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("MesclaInvest - Modelo Base")),
        body: const Center(
          child: Text(
          
            "Este é apenas um Molde.\nSubstitua esta tela pela sua Feature.",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}