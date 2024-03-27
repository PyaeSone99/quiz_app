import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  const AnswerButton({super.key,required this.onTab,required this.answerText});

  final void Function () onTab;

  final String answerText;

  @override
  Widget build(context) {
    return ElevatedButton(
      onPressed: onTab, 
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 33, 11, 95),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40)
        )
      ),
      child: Text(answerText)
    );
         
  }
}