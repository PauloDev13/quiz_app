final List quiz = [
  {
    'pergunta': 'Quem descobriu o Brasil?',
    'respostas': [
      'Pero Vaz de Caminha',
      'Pedro Álvares Cabral',
      'Vasco da Gama',
      'Cristovam Colombo',
    ],
    'alternativa_correta': 2,
  },
  {
    'pergunta': 'Quem descobriu as Américas?',
    'respostas': [
      'Cristovam Colombo',
      'Vasco da Gama',
      'Pedro Álvares Cabral',
      'Pero Vaz de Caminha',
    ],
    'alternativa_correta': 1,
  },
  {
    'pergunta': 'Em qual ano o Brasil foi descoberto?',
    'respostas': ['1.200', '1.600', '1.100', '1.500'],
    'alternativa_correta': 4,
  },
  {
    'pergunta': 'Pergunta 04?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 3,
  },
  {
    'pergunta': 'Pergunta 05?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 1,
  },
  {
    'pergunta': 'Pergunta 06?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 2,
  },
  {
    'pergunta': 'Pergunta 07?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 4,
  },
  {
    'pergunta': 'Pergunta 08?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 1,
  },
  {
    'pergunta': 'Pergunta 09?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 2,
  },
  {
    'pergunta': 'Pergunta 10?',
    'respostas': ['Resposta 1', 'Resposta 2', 'Resposta 3', 'Resposta 4'],
    'alternativa_correta': 1,
  },
];

reordenarLista() {
  // reordena de forma diferente a lista de perguntas a cada interação
  quiz.shuffle();

  for (var elemento in quiz) {
    // recebe o valor da alternativa correta
    int alternativaCorreta = elemento['alternativa_correta'];
    // guarda a lista de respostas
    List respostas = elemento['respostas'];
    // recebe o texto da resposta correta com
    // base no valor da alternativa correta
    String respostaCorreta = elemento['respostas'][alternativaCorreta - 1];

    // reordena de forma diferente a lista de respostas a cada interação
    respostas.shuffle();

    int i = 1;

    for (var elemento in respostas) {
      if (elemento == respostaCorreta) {
        alternativaCorreta = i;
      }
      i++;
    }

    elemento['alternativa_correta'] = alternativaCorreta;
  }
}
