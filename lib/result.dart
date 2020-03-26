import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get textPhrase {
    String resultText;
    if (resultScore <= 8)
      resultText = "You're innocent";
    else if (resultScore <= 12)
      resultText = "You're kinda harami";
    else if (resultScore <= 16)
      resultText = "Bray Harami hu Beta";
    else
      resultText = "Panoti";
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          textPhrase,
          style: TextStyle(
            color: Colors.indigoAccent,
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 30,),
        FlatButton(
          child: Text("Reset Quiz"),
          color: Colors.yellow,
          onPressed: resetHandler,
        )
      ],
    );
  }
}
