import 'package:flutter/material.dart';

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
    return const Text(
      'This is question Scream'
    );
  }
}