import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como GestureDetector, Container, ClipRRect).
import 'package:google_fonts/google_fonts.dart'; // Biblioteca de fontes (permite usar GoogleFonts.montserrat).
import '../asset_details_screen.dart'; // Importa a tela de detalhes (permite navegar para AssetDetailsScreen).

class StartupCard extends StatelessWidget {
  final Map<String, dynamic> startup;
  final double total;
  //total é o valor total do startup=quantidade de tokens x preço do token

  const StartupCard({
    super.key,
    required this.startup,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    //este widget é usado para criar uma cartão de startup
    //ele contém as informações do startup, como nome, logo, preço, quantidade de tokens, valor total
    //e um botão para ver detalhes
    //quando o usuário clica no botão, ele é levado para a tela de detalhes do startup
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssetDetailsScreen(startup: startup),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: startup['logo'].toString().startsWith('http')
                        ? Image.network(
                            startup['logo'],
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                const Icon(Icons.business, color: Colors.grey),
                          )
                        : Image.asset(
                            'assets/images/logos/${startup['logo']}',
                            fit: BoxFit.contain,
                            errorBuilder: (context, error, stackTrace) =>
                                Image.asset(
                              startup['logo'],
                              fit: BoxFit.contain,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.business, color: Colors.grey),
                            ),
                          ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        startup['ticker'],
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        startup['nome'],
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'R\$ ${startup['preco'].toStringAsFixed(2)}',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      startup['valorizacao'],
                      style: GoogleFonts.montserrat(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Qtd: ${startup['qtd']}',
                  style: GoogleFonts.montserrat(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  'Total: R\$ ${total.toStringAsFixed(2)}',
                  style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF512DA8),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
