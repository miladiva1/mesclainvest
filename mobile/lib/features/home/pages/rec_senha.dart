import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mobile/features/home/componentes/btn_rec_senha.dart';
import 'package:mobile/features/home/componentes/seta_voltar.dart';
import 'package:mobile/features/home/componentes/txt_rec_senha.dart';

class RecuperarSenha extends StatefulWidget {
  const RecuperarSenha({super.key});

  @override
  State<RecuperarSenha> createState() => _RecuperarSenhaState();
}

class _RecuperarSenhaState extends State<RecuperarSenha> {
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Center(
          child: Column(
            children: [

              SetaVoltar(
                ontap: () {
                  Navigator.pushNamed(context, '/login');
                }
              ),

              SizedBox(height: 10,),

              Expanded(
                child: Container(
                  color: Colors.grey[350],
                  child: Center(
                    child: Container(
                      width: 350,
                      height: 600,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                            Expanded(
                              child: Column(
                                children: [

                                  SizedBox(height: 20,),

                                  Text(
                                    'Recuperar Senha',
                                    style: GoogleFonts.lora(
                                    color: Colors.purple[900],
                                    fontSize: 34,
                                    )
                                  ),
                              
                                  SizedBox(height: 60,),
                              
                                  Text(
                                    'Para continuar, \ndigite seu e-mail',
                                    style: GoogleFonts.lora(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    )
                                  ),

                                  SizedBox(height: 20,),
                              
                                  CampoDeEmail(
                                    controller: emailController, 
                                    hintText: 'Minhaconta@gmail.com', 
                                    obscureText: false,
                                    ),

                                  SizedBox(height: 120,),

                                  BotaoRecuperar(
                                    onTap: () {
                                      Navigator.pushNamed(context, '/emailenviado');
                                    }
                                  ),

                                  
                                ]
                              ),
                            )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}