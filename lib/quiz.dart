import 'package:flutter/material.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/question_scream.dart';


List<Color> homePageColor = [const Color.fromARGB(255, 78, 13, 151),const Color.fromARGB(255, 107, 15, 168)];
const startAlign = Alignment.topLeft;
const endAlign = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }

}

class _QuizState extends State<Quiz> {

  final List<String> selectedAnswer = [];

  var activeScream = 'start-scream';

  void switchScream (){
    setState(() {
      activeScream = 'question-scream';
    });
  }

  void chooseAnswer(answer){
    selectedAnswer.add(answer);
  }

  @override
  Widget build( context) {
      Widget screamWidget = HomePage(switchScream);

      if (activeScream == 'question-scream') {
        screamWidget = QuestionScream(onSelectedAnswer:chooseAnswer);
      }

      return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: homePageColor,
              begin: startAlign,
              end: endAlign
            )
          ),
          // child: activeScream == 'start-scream' ? HomePage(switchScream) : const QuestionScream(),
          child: screamWidget,
        ),

      ),
    );
  }
}