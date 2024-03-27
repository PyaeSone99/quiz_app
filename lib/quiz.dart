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

  Widget activeScream = const HomePage();

  void switchScream (){
    setState(() {
      activeScream = const QuestionScream();
    });
  }

  @override
  Widget build( context) {
      return MaterialApp(
      home: Scaffold(
        body: activeScream,
      ),
    );
  }
}