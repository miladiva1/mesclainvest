// feito por camila fernandes costacurta RA:25012949

import 'package:flutter/material.dart'; // Biblioteca base do Flutter (permite usar widgets como GestureDetector, Container, ClipRRect).
import 'package:google_fonts/google_fonts.dart'; // Biblioteca de fontes (permite usar GoogleFonts.montserrat).
import '../asset_details_screen.dart'; // Importa a tela de detalhes (permite navegar para AssetDetailsScreen).

/**
 * CLASSE: StartupCard
 * TIPO: StatelessWidget (Widget Fixo/Estático)
 * O QUE FAZ: Este componente desenha o cartão individual de cada startup na lista do balcão.
 * Ele mostra o logo, ticker, nome, preço atual, valorização e o saldo do usuário.
 */
class StartupCard extends StatelessWidget {
  final Map<String, dynamic> startup; // Os dados da startup (nome, logo, preço, etc).
  final double total; // O valor total investido (Preço x Quantidade).

  const StartupCard({
    super.key,
    required this.startup,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // AÇÃO: Quando o usuário clica no cartão, ele é levado para a tela de detalhes.
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AssetDetailsScreen(startup: startup),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16), // Espaço entre os cartões.
        padding: const EdgeInsets.all(16), // Espaço interno.
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Cantos arredondados.
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.04), // Sombra bem leve.
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                // LOGO DA STARTUP
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
                // NOME E TICKER
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
                // PREÇO E VALORIZAÇÃO
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
                        color: Colors.green, // DICA: Pode ser condicional se quiser vermelho para negativo.
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Divider(height: 24), // Linha divisória.
            // SALDO E VALOR TOTAL
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
