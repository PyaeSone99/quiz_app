import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question_data.dart';

class QuestionScream extends StatefulWidget {

  const QuestionScream({super.key});

  @override
  State<QuestionScream> createState () {
    return _QuestionScreamState();
  }
}


class _QuestionScreamState extends State<QuestionScream> {

  var currentQuestion = questionData[0];
  
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.title,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
             const SizedBox(height: 20,),
            ...(currentQuestion.possibleAnswers.map((answer) {
              return AnswerButton(onTab: (){}, answerText: answer);
            }).toList()),
            ],
        ),
      ),
    );
  }
}