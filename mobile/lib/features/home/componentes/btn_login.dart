import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FazerLogin extends StatelessWidget {
  final Function()? onTap;

  const FazerLogin({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Colors.deepPurple[50],
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: Text(
            'Fazer o Login',
            style: GoogleFonts.lora(
              color: Colors.purple[900],
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}