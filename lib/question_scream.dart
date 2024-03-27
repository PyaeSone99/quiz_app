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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.title,style: const TextStyle(
            color: Colors.white
          ),),
           const SizedBox(height: 20,),
           AnswerButton(onTab: (){}, answerText: currentQuestion.possibleAnswers[0]),
           AnswerButton(onTab: (){}, answerText: currentQuestion.possibleAnswers[1]), 
           AnswerButton(onTab: (){}, answerText: currentQuestion.possibleAnswers[2]),
           AnswerButton(onTab: (){}, answerText: currentQuestion.possibleAnswers[3]),      
          ],
      ),
    );
  }
}