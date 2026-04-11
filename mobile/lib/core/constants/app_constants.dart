class AppConstants {
  // URL base do backend
  static const String baseUrl = 'http://localhost:3000/api';

  // URL para emulador Android
  // static const String baseUrl = 'http://10.0.2.2:3000/api';

  // Timeouts
  static const int connectionTimeout = 30000;
  static const int receiveTimeout = 30000;

  // Autenticação
  static const String tokenKey = 'auth_token';
  static const int mfaCodeLength = 6;

  // Paginação
  static const int pageSize = 20;
}
