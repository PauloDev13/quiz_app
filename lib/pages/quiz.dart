import 'package:flutter/material.dart';

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
        body: Padding(
          padding: EdgeInsets.only(bottom: 20, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Text('Pergunta 1 de 10', style: TextStyle(fontSize: 20)),
              ),
              Text('Pergunta', style: TextStyle(fontSize: 20)),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.all(10),
                  fixedSize: Size(200, 60),
                ),
                child: Text(
                  'Resposta 1',
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
                  style: TextStyle(color: Colors.white, fontSize: 20),
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
