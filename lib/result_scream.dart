import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/question_summery.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScream extends StatelessWidget {

  const ResultScream({super.key,required this.chosenAnswered,required this.onRestart});

  final List<String> chosenAnswered;

  final void Function () onRestart;

  List<Map<String,Object>> get summaryData {
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

    final numTotalQuestions = questionData.length;
    final numTotalCorrectAnswer = summaryData.where(
      (data) => data['user_answer'] == data['correct_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numTotalQuestions out of $numTotalCorrectAnswer questions correctly!',
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 230, 200, 253),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionSummery(summaryData),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart, 
              style: TextButton.styleFrom(
                foregroundColor: Colors.white
              ),
              icon: const Icon(Icons.refresh),
              label: const Text('Restart Quiz!'),
              
            )
          ],
        ),
      ),
    );
  }
}
