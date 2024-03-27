import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/question_summery.dart';

class ResultScream extends StatelessWidget {

  const ResultScream({super.key,required this.chosenAnswered});

  final List<String> chosenAnswered;

  List<Map<String,Object>> getSummeryData (){
    List<Map<String,Object>> summery = [];

    for (var i = 0; i < chosenAnswered.length; i++) {
      summery.add({
        'question_index' : i,
        'question' : questionData[i].title,
        'correct_answer' : questionData[i].possibleAnswers[0],
        'user_answer' : chosenAnswered[i]
      });
    }

    return summery;
  }

  @override
  Widget build(context) {

    final summaryData = getSummeryData();
    final numTotalQuestions = questionData.length;
    final numTotalCorrectAnswer = summaryData.where(
      (data) {
        return data['user_answer'] == data['correct_answer'];
      }
    ).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answered $numTotalQuestions out of $numTotalCorrectAnswer questions correctly!'),
            const SizedBox(
              height: 30,
            ),
            QuestionSummery(getSummeryData()),
            const SizedBox(
              height: 30,
            ),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!'))
          ],
        ),
      ),
    );
  }
}
