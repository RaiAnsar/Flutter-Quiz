import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function nextQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.nextQuestion,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Question(
          questions[questionIndex]['question'],
        ),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(nextQuestion, answer);
        }).toList()
      ],
    );
  }
}
