import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/startups/presentation/screens/criar_um.dart';
import 'package:flutter_application_1/features/startups/presentation/screens/wallet_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MesclaInvest',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.deepPurple,
      ),
      routes: {
        '/mfa': (context) => const MfaScreen(),
        '/wallet': (context) => const CarteiraBalcaoScreen(),
      },
      home: const MfaScreen(),
    );
  }
}
