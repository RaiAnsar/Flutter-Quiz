import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:flutter_quiz/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
        {'text': 'Max', 'score': 1},
      ],
    },
  ];

  int _qustionIndex = 0;
  int _totalScore = 0;

  resetQuiz() {
    setState(() {
      _qustionIndex = 0;
      _totalScore = 0;
    });
  }

  nextQuestion(int score) {
    _totalScore += score;

    setState(() {
      _qustionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF34F2),
        appBar: AppBar(
          title: Text('Flutter Quiz'),
        ),
        body: Center(
          child: _qustionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _qustionIndex,
                  nextQuestion: nextQuestion,
                )
              : Result(_totalScore, resetQuiz),
        ),
      ),
    );
  }
}
