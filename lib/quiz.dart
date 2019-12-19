import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final int questionIndex;
  final Function selectHandler;
  Quiz(this.questions, this.questionIndex, this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          questions[questionIndex]['questionText'],
          style: TextStyle(fontSize: 20),
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Container(
            width: double.infinity,
            child: RaisedButton(
              child: Text(answer['text'], style: TextStyle(color: Colors.white)),
              onPressed: (){
                selectHandler(answer['score']);
              },
              color: Colors.blue,
            ),
          );
        })
      ],
    );
  }
}
