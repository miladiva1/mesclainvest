/*Vinícius ->
* Explicação do código:
* Repositório de dados fictícios (Mock) para testes de interface.
* Isso evita "sujar" o main.dart ou as telas com dados fixos.*/

import '../domain/startup.dart';

class StartupMock {
  static StartupDetail get ecoCycleSample => StartupDetail(
    id: '1',
    name: 'EcoCycle',
    stage: 'Em operação',
    shortDescription: 'Gamificação de reciclagem na PUC.',
    description: 'Solução para incentivar a reciclagem no campus.',
    capitalRaisedCents: 5000000, // R$ 50.000,00
    totalTokensIssued: 1000,
    currentTokenPriceCents: 5000, // R$ 50,00
    tags: ['Sustentabilidade', 'IoT'],
    executiveSummary: 'O EcoCycle utiliza gamificação para transformar o hábito de reciclar em créditos reais para os alunos utilizarem nas cantinas da universidade.',
    founders: [
      {'name': 'Vinícius Silva', 'percentage': 60},
      {'name': 'Ana Oliveira', 'percentage': 40},
    ],
    publicQuestions: [
      {
        'question': 'Como os créditos são validados?',
        'answer': 'Através de sensores IoT instalados nas lixeiras inteligentes.'
      }
    ],
    access: {},
    coverImageUrl: 'https://images.unsplash.com/photo-1532996122724-e3c354a0b15b?q=80&w=2070&auto=format&fit=crop',
  );

  static StartupDetail get devMatchSample => StartupDetail(
    id: '2',
    name: 'DevMatch',
    stage: 'Nova',
    shortDescription: 'Conecta alunos de TI a projetos do Mescla.',
    description: 'Plataforma de matchmaking para formação de times de tecnologia.',
    capitalRaisedCents: 2000000, // R$ 20.000,00
    totalTokensIssued: 500,
    currentTokenPriceCents: 4000, // R$ 40,00
    tags: ['Educação', 'Tecnologia'],
    executiveSummary: 'O DevMatch é uma plataforma que utiliza IA para analisar o perfil técnico e comportamental de alunos da PUC, conectando-os a startups que precisam de talentos.',
    founders: [
      {'name': 'Carlos Souza', 'percentage': 50},
      {'name': 'Beatriz Lima', 'percentage': 50},
    ],
    publicQuestions: [
      {
        'question': 'É exclusivo para alunos da PUC?',
        'answer': 'Nesta fase inicial sim, com foco total no ecossistema do Mescla.'
      }
    ],
    access: {},
    coverImageUrl: 'https://images.unsplash.com/photo-1522071820081-009f0129c71c?q=80&w=2070&auto=format&fit=crop',
  );
}
