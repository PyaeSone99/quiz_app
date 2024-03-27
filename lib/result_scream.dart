import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';

class ResultScream extends StatelessWidget {

  const ResultScream({super.key,required this.chosenAnswered});

  final List<String> chosenAnswered;

  List<Map<String,Object>> getSummeryData (){
    List<Map<String,Object>> summery = [];

    for (var i = 0; i < chosenAnswered.length; i++) {
      summery.add({
        'question_indes' : i,
        'question' : questionData[i],
        'correct_answer' : questionData[i].possibleAnswers[0],
        'user_answer' : chosenAnswered[i]
      });
    }

    return summery;
  }

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'You answered X out of Y questions correctly!'
          ),
          const SizedBox(height: 30,),
          const Text(
            'List of answers and questions...',
          ),
          const SizedBox(height: 30,),
          TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
        ],
      ),
    );
  }
}