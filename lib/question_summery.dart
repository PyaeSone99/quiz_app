import 'package:flutter/material.dart';

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
                (((data['question']as int) + 1).toString()),
              ),
            ],
          );
        },
      ).toList(),
    );
  }
}