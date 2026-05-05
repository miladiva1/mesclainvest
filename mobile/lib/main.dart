import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile/features/auth/presentation/screen/mfa.dart';
import 'package:mobile/features/exchange/presentation/screen/wallet_screen.dart';
import 'package:mobile/features/home/pages/email_enviado.dart';
import 'package:mobile/features/home/pages/home.dart';
import 'package:mobile/features/home/pages/login.dart';
import 'package:mobile/features/home/pages/rec_senha.dart';
import 'package:mobile/features/startups/presentation/screen/balcao.dart';
import 'package:mobile/features/startups/presentation/screen/cadastros_screen.dart';
import 'package:mobile/features/startups/presentation/screen/profile_security.dart';
import 'package:mobile/features/startups/presentation/screen/wallet.dart';
import 'package:mobile/firebase_options.dart';
//import 'package:mobile/features/perg_e_resp.dart/paginas/perg_e_resp.dart';
//import 'package:firebase_core/firebase_core.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:cloud_functions/cloud_functions.dart';
//import 'package:firebase_auth/firebase_auth.dart';
//import 'features/startups/presentation/screen/catalogo_de_startups.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MesclaInvest',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF512DA8)),
        useMaterial3: true,
      ),
      // A tela inicial agora aponta para o lugar correto
      //home: const CarteiraBalcaoScreen(),
      home: const PaginaInicial(),
      routes: {
        '/menu':(context) => PaginaInicial(),
        '/login':(context) => LoginPage(),
        '/recuperarsenha':(context) => RecuperarSenha(),
        '/emailenviado':(context) => EmailEnviado(),
        '/carteira':(context) => CarteiraBalcaoScreen(),
        '/cadastro':(context) => SignUpPage(),
        '/register': (context) => const SignUpPage(), // falta saber qual e essa rota
        '/forgot': (context) => const RecuperarSenha(), // falta saber qual e essa rota
        '/mfa': (context) => const MfaScreen(),
        '/wallet': (context) => const WalletDashboardPage(),
        '/balcao': (context) => const BalcaoNegociacaoPage(),
        '/profile-security': (context) => const ProfileSecurityScreen(),
      }
    );
  }
}