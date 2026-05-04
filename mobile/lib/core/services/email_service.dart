import 'dart:convert';
import 'package:http/http.dart' as http;

class EmailService {
  static Future<void> sendOTP(String userEmail, String otpCode) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'service_id': 'service_s4mf1ca',
        'template_id': 'template_u1iahq9',
        'user_id': 'fziocB8yeFSWVTo5t',
        'accessToken': 'z6oAkndtptn0G-vhvQm7o',
        'template_params': {
          'email': userEmail,
          'otp_code': otpCode,
        }
      }),
    );

    if (response.statusCode != 200) {
      throw Exception('Falha ao enviar e-mail: ${response.body}');
    }
  }
}
