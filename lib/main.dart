import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import 'package:quiz/results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What is your favorite Color?',
      'answers': [
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 3},
        {'text': 'Blue', 'score': 5},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your favorite Animal?',
      'answers': [
        {'text': 'Dog', 'score': 5},
        {'text': 'Lion', 'score': 7},
        {'text': 'Cat', 'score': 3},
        {'text': 'Rabbit', 'score': 1},
      ]
    },
    {
      'questionText': 'What is your favorite Bird?',
      'answers': [
        {'text': 'Eagle', 'score': 8},
        {'text': 'Parrot', 'score': 3},
        {'text': 'Pegion', 'score': 5},
        {'text': 'Sparrow', 'score': 1},
      ]
    },
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _answerQuestions(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void resetApp() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Personality Quiz App')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: _questionIndex < _questions.length
                ? Quiz(_questions, _questionIndex, _answerQuestions)
                : Results(_totalScore, resetApp),
          ),
        ),
      ),
    );
  }
}
