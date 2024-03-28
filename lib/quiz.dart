import 'package:flutter/material.dart';
import 'package:quiz_app/data/question_data.dart';
import 'package:quiz_app/home_page.dart';
import 'package:quiz_app/question_scream.dart';
import 'package:quiz_app/result_scream.dart';


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

   List<String> _selectedAnswer = [];

  var _activeScream = 'start-scream';

  void switchScream (){
    setState(() {
      _activeScream = 'question-scream';
    });
  }

  void chooseAnswer(answer){
    _selectedAnswer.add(answer); 

    if (_selectedAnswer.length == questionData.length) {
      setState(() {
        _activeScream = 'result-scream';
      });
    }
  }

    void restartQuiz() {
    setState(() {
      _selectedAnswer = [];
      _activeScream = 'questions-screen';
    });
  }


  @override
  Widget build( context) {
      Widget screamWidget = HomePage(switchScream);

      if (_activeScream == 'question-scream') {
        screamWidget = QuestionScream(onSelectedAnswer:chooseAnswer);
      }

      if (_activeScream == 'result-scream') {
        screamWidget = ResultScream(chosenAnswered: _selectedAnswer,onRestart: restartQuiz,);
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