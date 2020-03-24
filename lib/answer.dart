import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectHandler;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.red,
        textColor: Colors.yellow,
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
