<<<<<<< HEAD
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mobile/core/routes/app_routes.dart';
import 'package:mobile/features/auth/presentation/login_screen.dart';
import 'firebase_options.dart';
=======
import 'package:flutter/material.dart';
import 'package:mobile/core/routes/app_routes.dart';
import 'package:mobile/home_screen.dart';
>>>>>>> 6f5c6426 (feat: adiciona tela inicial MesclaInvest)

void main() {
  WidgetsFlutterBinding.ensureInitialized();
<<<<<<< HEAD
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
=======
  runApp(const MesclaInvestApp());
}

class MesclaInvestApp extends StatelessWidget {
  const MesclaInvestApp({super.key});
>>>>>>> 6f5c6426 (feat: adiciona tela inicial MesclaInvest)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      title: 'MesclaInvest',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF512DA8)),
      ),
      // Ponto de entrada da navegação
      home: const LoginPage(),
      // Todas as rotas nomeadas centralizadas em AppRoutes
      routes: AppRoutes.routes,
=======
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'SF Pro Text',
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF5A2D91),
          brightness: Brightness.light,
        ),
      ),
      home: const HomeScreen(),
      routes: {
        ...AppRoutes.routes,
        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.menu: (_) => const HomeScreen(),
      },
>>>>>>> 6f5c6426 (feat: adiciona tela inicial MesclaInvest)
    );
  }
}
