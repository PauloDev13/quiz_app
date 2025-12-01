import 'package:flutter/material.dart';
import 'package:quiz_app/pages/resultado.dart';
import 'package:quiz_app/quiz_dados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaNumero = 1;
  int acertos = 0;
  int erros = 0;

  @override
  Widget build(BuildContext context) {
    // chama função que reordena as lista de
    // perguntas e respostas a cada interação
    reordenarLista();

    void respondeu(int respostaNumero) {
      setState(() {
        if (quiz[perguntaNumero - 1]['alternativa_correta'] == respostaNumero) {
          debugPrint('Acertou');
          acertos++;
        } else {
          debugPrint('Errou');
          erros++;
        }

        debugPrint('Acertos totais: $acertos - Erros totais: $erros');

        if (perguntaNumero == 10) {
          debugPrint('Quiz terminou');
          Navigator.pushNamed(
            context,
            'resultado',
            arguments: Argumentos(acertos),
          );
        } else {
          perguntaNumero++;
        }
      });
    }

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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondeu(1);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Text(
                    '${quiz[perguntaNumero - 1]['respostas'][0]}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondeu(2);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Text(
                    '${quiz[perguntaNumero - 1]['respostas'][1]}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondeu(3);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Text(
                    '${quiz[perguntaNumero - 1]['respostas'][2]}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    respondeu(4);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.all(10),
                  ),
                  child: Text(
                    '${quiz[perguntaNumero - 1]['respostas'][3]}',
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
