// ── app_routes.dart ────────────────────────────────────────────────────
// Centraliza os identificadores de rota e o mapa de rotas do app.
// ──────────────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';

import 'package:mobile/features/auth/presentation/screen/profile_security.dart';
import 'package:mobile/features/home/pages/cadastros_screen.dart';
import 'package:mobile/features/home/pages/email_enviado.dart';
import 'package:mobile/features/home/pages/login.dart';
import 'package:mobile/features/home/pages/rec_senha.dart';
import 'package:mobile/features/startups/presentation/screen/list/catalogo_de_startups.dart';

class AppRoutes {
  // ── Constantes de rota ─────────────────────────────────────────────
  static const String home = '/';
  static const String login = '/login';
  static const String cadastro = '/cadastro';
  static const String recuperarSenha = '/recuperar-senha';
  static const String emailEnviado = '/email-enviado';
  static const String catalogo = '/catalogo';
  static const String mfa = '/mfa';
  static const String profileSecurity = '/perfil-seguranca';
  static const String startupDetalhes = '/startup-detalhes';
  static const String balcao = '/balcao';
  static const String carteira = '/carteira';
  static const String dashboard = '/dashboard';

  // ── Mapa de rotas ──────────────────────────────────────────────────
  // Rotas que precisam de parâmetros (ex: MfaScreen.destination) devem
  // ser construídas via Navigator.push com MaterialPageRoute.
  static Map<String, WidgetBuilder> get routes => {
        login: (_) => const LoginPage(),
        cadastro: (_) => const SignUpPage(),
        recuperarSenha: (_) => const RecuperarSenha(),
        emailEnviado: (_) => const EmailEnviado(),
        catalogo: (_) => const CatalogoStartupsPage(),
        profileSecurity: (_) => const ProfileSecurityScreen(),
        startupDetalhes: (_) => const Placeholder(),
        balcao: (_) => const Placeholder(),
        carteira: (_) => const Placeholder(),
        dashboard: (_) => const Placeholder(),
      };
}
