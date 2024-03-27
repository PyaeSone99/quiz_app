import 'package:flutter/material.dart';

class ResultScream extends StatelessWidget {

  const ResultScream({super.key,required this.chosenAnswered});

  final List<String> chosenAnswered;

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