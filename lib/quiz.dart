import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/question_scream.dart';

class Quiz extends StatefulWidget {
  
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz> {

  var activeScream = 'start-scream';

  void switchScream (){
    setState(() {
      activeScream = 'question-scream';
    });
  }

  @override
  Widget build( context) {
      Widget screamWidget = HomePage(switchScream);

      if (activeScream == 'question-scream') {
        screamWidget = const QuestionScream();
      }

      return MaterialApp(
      home: Scaffold(
        // body: activeScream == 'start-scream' ? HomePage(switchScream) : const QuestionScream(),
        body: screamWidget,
      ),
    );
  }
}