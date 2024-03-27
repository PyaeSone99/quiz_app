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
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('This is title'),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: (){}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: (){}, child: const Text('Answer 1')),
          ElevatedButton(onPressed: (){}, child: const Text('Answer 1')),
        ],
      ),
    );
  }
}