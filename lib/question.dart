import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Text(
      questionText,
      style: TextStyle(
        color: Colors.purple,
        fontFamily: 'Fira Code',
        fontSize: 30,
        letterSpacing: 0.8,
      ),
      textAlign: TextAlign.center,
    );
  }
}
