import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    List quiz = [
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
    ];

    quiz.add({
      'pergunta': 'Quem descobriu as Américas?',
      'respostas': [
        'Cristovam Colombo',
        'Vasco da Gama',
        'Pedro Álvares Cabral',
        'Pero Vaz de Caminha',
      ],
      'alternativa_correta': 1,
    });

    int perguntaNumero = 1;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: Center(
            child: Text(
              'Quiz - Curso Flutter & Dart',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(bottom: 20, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Pergunta $perguntaNumero de ${quiz.length}',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Text(
                'Pergunta:\n ${quiz[perguntaNumero - 1]['pergunta']}',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                ),
                child: Text(
                  '${quiz[perguntaNumero - 1]['respostas'][0]}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                ),
                child: Text(
                  '${quiz[perguntaNumero - 1]['respostas'][1]}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                ),
                child: Text(
                  '${quiz[perguntaNumero - 1]['respostas'][2]}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                ),
                child: Text(
                  '${quiz[perguntaNumero - 1]['respostas'][3]}',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
