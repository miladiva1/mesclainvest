/*Vinícius ->
* Explicação do código:
* Desenvolvi o StartupSocietyWidget: Cuida da estrutura societária (sócios e %) e das informações financeiras (capital, tokens, preço).*/

import 'package:flutter/material.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/startup.dart';

class StartupSocietyWidget extends StatelessWidget {
  final StartupDetail startup;

  const StartupSocietyWidget({Key? key, required this.startup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Estrutura Societária', style: AppTypography.heading2),
        const SizedBox(height: 12),
        
        // Lista de Sócios/Founders
        ...startup.founders.map((founder) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(founder['name'] ?? 'Sócio', style: AppTypography.body),
                Text('${founder['percentage'] ?? '0'}%', 
                  style: AppTypography.body.copyWith(fontWeight: FontWeight.bold)),
              ],
            ),
          );
        }).toList(),

        const Divider(height: 32),

        Text('Informações de Capital', style: AppTypography.heading2),
        const SizedBox(height: 12),

        _buildInfoRow('Capital já aportado:', 'R\$ ${(startup.capitalRaisedCents / 100).toStringAsFixed(2)}'),
        _buildInfoRow('Total de tokens emitidos:', startup.totalTokensIssued.toString()),
        _buildInfoRow('Preço atual do token:', 'R\$ ${(startup.currentTokenPriceCents / 100).toStringAsFixed(2)}'),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: AppTypography.bodySecondary),
          Text(value, style: AppTypography.body.copyWith(fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }
}
