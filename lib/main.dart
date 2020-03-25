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
      'question': 'What is the national day of Pakistan?',
      'answers': ["23rd March", "14th August", "25th December", "21st May"]
    },
    {
      'question': 'How many people live in Pakistan?',
      'answers': ["21 Million", "220 Million", "160 Million", "1.6 Billion"]
    },
    {
      'question': 'Which technology is the best for Mobile App Development?',
      'answers': [
        "Flutter",
        "Flutter with Dart",
        "React Naitive",
        "Xamarin Forms"
      ]
    },
    {
      'question': 'Who is president of Pakistan?',
      'answers': ["Raja Zia ul Haq", "Tariq Jameel", "Bajwa Jee", "Fawad CH"]
    },
    {
      'question': 'What is the national day of America?',
      'answers': ["1st June", "4th July", "6th October", "24th December"]
    },
    {
      'question': 'How many people live in India?',
      'answers': ["2.2 Billion", "6 Billion", "1.28 Billion", "0.8 Billion"]
    },
    {
      'question': 'Which technology is the best for Web Development?',
      'answers': ["ReactJS", "PHP", "HTML & CSS + JS", "Flutter"]
    },
    {
      'question': 'Who is president of Turkey?',
      'answers': [
        "Eisa Bookhaari",
        "Rajap Tayapp Ordgan",
        "Colonel Gaddafi",
        "Altaf Hussain"
      ]
    },
  ];

  int _qustionIndex = 0;
  nextQ() {
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
                  nextQuestion: nextQ,
                )
              : Result(),
        ),
      ),
    );
  }
}
