import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScream extends StatefulWidget {

  const QuestionScream({super.key});

  @override
  State<QuestionScream> createState () {
    return _QuestionScreamState();
  }
}


class _QuestionScreamState extends State<QuestionScream> {
  
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const Text('This is title'),
           const SizedBox(height: 20,),
           AnswerButton(onTab: (){}, answerText: 'Answer 1'),
           AnswerButton(onTab: (){}, answerText: 'Answer 1'), 
           AnswerButton(onTab: (){}, answerText: 'Answer 1'),       
          ],
      ),
    );
  }
}