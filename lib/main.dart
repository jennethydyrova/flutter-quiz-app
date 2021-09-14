import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;

  void _answerQuestions() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer chosen');
  }

  @override
  Widget build(BuildContext ctx) {
    const questions = [
      {
        'question': "What\'s your favorite color?",
        'answers': ['White', 'Red', 'Black']
      },
      {
        'question': "What\'s your favorite animal?",
        'answers': ['Rabbit', 'Snake', 'Dog']
      },
      {
        'question': "What\'s your favorite food?",
        'answers': ['Pizza', 'Burger', 'Pasta']
      }
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App!')),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestions, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
