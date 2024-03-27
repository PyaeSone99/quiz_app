import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
  }

  
  
  @override
  Widget build(context) {

    var currentQuestion = questionData[currentQuestionIndex];

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
              style: GoogleFonts.lato(
                color : const Color.fromARGB(255, 201, 153, 251),
                fontSize : 24,
                fontWeight : FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
             const SizedBox(height: 20,),
            ...(currentQuestion.getShuffledAnswers().map((answer) {
              return AnswerButton(onTab: answerQuestion, answerText: answer);
            }).toList()),
            ],
        ),
      ),
    );
  }
}