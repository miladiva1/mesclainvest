import 'package:flutter/material.dart';
import 'package:mobile/pages/email_enviado.dart';
import 'package:mobile/pages/recuperar_senha.dart';
import 'pages/home.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
      routes: {
        '/menu':(context) => PaginaInicial(),
        '/login':(context) => LoginPage(),
        '/recuperarsenha':(context) => RecuperarSenha(),
        '/emailenviado':(context) => EmailEnviado(),
      }
    );
  }
}