import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;
  Quiz(
      {@required this.answerQuestion,
      @required this.questionIndex,
      @required this.questions});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Text(
        //   // questions.elementAt(1),
        //   // questions[1],
        //   questions[questionIndex],
        // ),
        Question(
          questions[questionIndex]['questionText'],
        ),
        // RaisedButton(
        //   child: Text('Answer 1'),
        //   onPressed: answerQuestion,
        // ),
        // RaisedButton(
        //   child: Text('Answer 2'),
        //   onPressed: answerQuestion,
        // ),
        // Answer(),
        // Answer(),
        // Answer(),
        ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
