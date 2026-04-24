/*Vinícius ->
* Explicação do código:
* Widget responsável por exibir o conteúdo de mídia e informações textuais da startup.
* Otimizado com NeverScrollableScrollPhysics para não travar o scroll da tela principal.*/

import 'package:flutter/material.dart';
import '../../../../core/theme/app_typography.dart';
import '../../domain/startup.dart';

class StartupMediaWidget extends StatelessWidget {
  final StartupDetail startup;

  const StartupMediaWidget({Key? key, required this.startup}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Sumário Executivo
        Text('Sumário Executivo', style: AppTypography.heading2),
        const SizedBox(height: 8),
        Text(
          startup.executiveSummary,
          style: AppTypography.body,
        ),
        
        const SizedBox(height: 24),

        // Área de Vídeos (Placeholder visual)
        Text('Vídeos e Pitch', style: AppTypography.heading2),
        const SizedBox(height: 12),
        Container(
          height: 180,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Center(
            child: Icon(Icons.play_circle_fill, size: 64, color: Colors.grey),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'Assista ao pitch de apresentação da startup.',
          style: AppTypography.caption,
        ),

        const SizedBox(height: 24),

        // Perguntas e Respostas Públicas
        Text('Perguntas Públicas', style: AppTypography.heading2),
        const SizedBox(height: 12),
        if (startup.publicQuestions.isEmpty)
          Text('Nenhuma pergunta pública disponível.', style: AppTypography.bodySecondary)
        else
          // Usando Column em vez de ListView para não conflitar com o scroll global
          Column(
            children: startup.publicQuestions.map((q) {
              return ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(q['question'] ?? '', style: AppTypography.body.copyWith(fontWeight: FontWeight.bold)),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(q['answer'] ?? 'Aguardando resposta.', style: AppTypography.body),
                  ),
                ],
              );
            }).toList(),
          ),
      ],
    );
  }
}
