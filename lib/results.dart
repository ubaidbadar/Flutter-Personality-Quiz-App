import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int score;
  final Function reset;
  Results(this.score, this.reset);
  String get resultPhases {
    var questionText = "You are bad";
    if (score <= 8) {
      questionText = "You are awsome and innocent";
    } else if (score <= 12) {
      questionText = "Pretty Likeable";
    } else if (score <= 14) {
      questionText = "You are strange";
    }
    return questionText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          resultPhases,
          style: TextStyle(fontSize: 24),
        ),
        RaisedButton(
          child: Text(
            'Reset',
            style: TextStyle(color: Colors.white)
          ),
          onPressed: reset,
          color: Colors.blue,
        )
      ],
    );
  }
}
