// ── app_routes.dart ────────────────────────────────────────────────────
// Centraliza os identificadores de rota e o mapa de rotas do app.
// ──────────────────────────────────────────────────────────────────────

import 'package:flutter/material.dart';

import 'package:mobile/features/profile/presentation/security_settings_screen.dart';
import 'package:mobile/features/auth/presentation/signup_screen.dart';
import 'package:mobile/features/auth/presentation/email_sent_confirmation_screen.dart';
import 'package:mobile/features/auth/presentation/login_screen.dart';
import 'package:mobile/features/auth/presentation/forgot_password_screen.dart';
import 'package:mobile/features/auth/presentation/home_screen.dart';
import 'package:mobile/features/startups/presentation/screen/list/catalogo_de_startups.dart';
import 'package:mobile/features/wallet/presentation/wallet_dashboard_screen.dart';
import 'package:mobile/features/wallet/presentation/trading_market_screen.dart';
import 'package:mobile/features/dashboard/main_wrapper_screen.dart';

class AppRoutes {
  // ── Constantes de rota ─────────────────────────────────────────────
  static const String mainWrapper = '/main';
  static const String menu = '/menu';
  static const String login = '/login';
  static const String cadastro = '/cadastro';
  static const String recuperarSenha = '/recuperarsenha';
  static const String emailEnviado = '/emailenviado';
  static const String catalogo = '/catalogo';
  static const String profileSecurity = '/profile-security';
  static const String startupDetalhes = '/startup-detalhes';
  static const String balcao = '/balcao';
  static const String carteira = '/carteira';
  static const String dashboard = '/dashboard';

  // ── Mapa de rotas ──────────────────────────────────────────────────
  // Rotas que precisam de parâmetros (ex: MfaScreen.destination) devem
  // ser construídas via Navigator.push com MaterialPageRoute.
  static Map<String, WidgetBuilder> get routes => {
        mainWrapper: (_) => const MainWrapperScreen(),
        login: (_) => const LoginPage(),
        menu: (_) => const PaginaInicial(),
        cadastro: (_) => const SignUpPage(),
        recuperarSenha: (_) => const RecuperarSenha(),
        emailEnviado: (_) => const EmailEnviado(),
        catalogo: (_) => const CatalogoStartupsPage(),
        profileSecurity: (_) => const ProfileSecurityScreen(),
        startupDetalhes: (_) => const Placeholder(),
        balcao: (_) => const BalcaoNegociacaoPage(),
        carteira: (_) => const WalletDashboardPage(),
        dashboard: (_) => const WalletDashboardPage(),
      };
}
