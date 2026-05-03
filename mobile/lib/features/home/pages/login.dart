import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/features/home/componentes/btn_home.dart';
import 'package:mobile/features/home/componentes/btn_login_senha.dart';
import 'package:mobile/features/home/componentes/campo_de_texto.dart';
import 'package:mobile/features/home/componentes/seta_voltar.dart';
import 'package:mobile/features/home/data/validacao_login.dart';
import 'package:mobile/features/home/pages/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  // ta pegando os dados e enviando para a funcao que envia os dados para o backend
  Future<void> loginUser() async {
    String username = usernameController.text;
    String password = passwordController.text;

    try {
      // recebeu o resultado da validacao e ta mandando para o login.dart
      final resultado = await EnviarDados().fazerLogin(username, password);

      // esse mounted caso esteja demorando pro servidor responder e
      // a pessoa saiu da pagina ele meio que fala pra nao terminar o processo
      if (!mounted) return;

      // se sucesso for verdade quer dizer que teve uma conta com esse email e senha
      if (resultado['success'] == true) {

        // se teve uma conta com essa conta tem que ser direcionada a pagina princial
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const PaginaInicial()
          ), // Troque pelo nome da sua tela
        );
      } else {
        // como nao foi encontrado tem que avisar ao usuario
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              resultado['message'],
              textAlign: TextAlign.center,
            ),
            backgroundColor: Colors.redAccent,
          ),
        );
      }
    } catch (_) {

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea( // safearea faz com que o icone nao fique na area da bateria ou do wifi ou coisa do tipo
        child: Center( // como o nome diz centraliza no meio
          child: Column(
            children: [

              SetaVoltar(
                ontap: () {
                  Navigator.pushNamed(context, '/menu');
                }
              ),

              Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),

              SizedBox(height: 10,),

              Text(
                'Fazer o Login',
                style: GoogleFonts.lora(
                  fontSize: 30,
                  color: Colors.purple[900],
                ),
              ),

              SizedBox(height: 20,),

              Image.asset('lib/features/home/images/perfil.png'),

              SizedBox(height: 50,),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 10), 
                    child: Text(
                      'E-mail',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                      ),
                      ),
                  ),
                ],
              ),

              CampoDeTexto(
                controller: usernameController,
                hintText: 'Minhaconta@gmail.com',
                obscureText: false,
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 10), 
                    child: Text(
                      'Senha',
                      style: GoogleFonts.lora(
                        fontSize: 20,
                      ),
                      ),
                  ),
                ],
              ),

              CampoDeTexto(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),

              SizedBox(height: 30,),

              MudarSenha(
                onTap: () {
                  Navigator.pushNamed(context, '/recuperarsenha');
                }
              ),

              SizedBox(height: 50,),

              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Image.asset(
                      'lib/features/home/images/Checkmark.png',
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Lembrar de mim',
                      style: GoogleFonts.lora(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 30,),

              Divider(
                thickness: 0.5,
                color: Colors.grey[400],
              ),

              SizedBox(height: 20,),

              Text.rich(
                TextSpan(
                  text: 'Não tenho cadastro. ',
                  style: TextStyle(
                    color: Colors.black
                  ),
                children: [
                  TextSpan(
                    text: 'Cadastrar',
                    style: TextStyle(
                      color: Colors.blue[600],
                      fontWeight: FontWeight.bold,
                    )
                  )
                ]
                )
              ),

              SizedBox(height: 30,),

              BotaoLogin(
                onTap: loginUser,
              )
              
          ],),
        ),
      ),
    );
  }
}