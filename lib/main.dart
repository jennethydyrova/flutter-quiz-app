import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
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
    var questions = [
      "What\'s your favorite color?",
      "What\'s your favorite animal?",
      "What\'s your favorite food?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App!')),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer: 1'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer: 2'),
              onPressed: _answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer: 3'),
              onPressed: _answerQuestions,
            )
          ],
        ),
      ),
    );
  }
}
