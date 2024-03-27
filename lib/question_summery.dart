import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class QuestionSummery extends StatelessWidget {

  const QuestionSummery(this.summeryData,{super.key});

  final List<Map<String,Object>> summeryData;

  @override
  Widget build(context) {
    return  Column(
      children : summeryData.map(
        (data) {
          return Row(
            children: [
              Text(
                (((data['question_index']as int) + 1).toString()),
              ),
              Expanded(
                child: Column(
                  children: [
                    Text(
                      data['question'] as String
                    ),
                    const SizedBox(height: 5,),
                    Text(
                      (data['user_answer'] as String)
                    ),
                    Text(
                      (data['correct_answer'] as String)
                    )
                  ],
                ),
              )
            ],
          );
        },
      ).toList(),
    );
  }
}