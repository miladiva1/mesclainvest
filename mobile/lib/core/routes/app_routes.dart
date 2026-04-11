import 'package:flutter/material.dart';

class AppRoutes {
  static const String login = '/login';
  static const String cadastro = '/cadastro';
  static const String recuperarSenha = '/recuperar-senha';
  static const String mfa = '/mfa';
  static const String home = '/home';
  static const String startupDetalhes = '/startup-detalhes';
  static const String balcao = '/balcao';
  static const String carteira = '/carteira';
  static const String dashboard = '/dashboard';

  static Map<String, WidgetBuilder> get routes => {
    login: (_) => const Placeholder(),
    cadastro: (_) => const Placeholder(),
    recuperarSenha: (_) => const Placeholder(),
    mfa: (_) => const Placeholder(),
    home: (_) => const Placeholder(),
    startupDetalhes: (_) => const Placeholder(),
    balcao: (_) => const Placeholder(),
    carteira: (_) => const Placeholder(),
    dashboard: (_) => const Placeholder(),
  };
}
