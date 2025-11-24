import 'package:flutter/material.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Pergunta 1 de 10'),
              Text('Pergunta'),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(200, 60),
                ),
                child: Text(
                  'Resposta 1',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(200, 60),
                ),
                child: Text(
                  'Resposta 2',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(200, 60),
                ),
                child: Text(
                  'Resposta 3',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(200, 60),
                ),
                child: Text(
                  'Resposta 4',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
