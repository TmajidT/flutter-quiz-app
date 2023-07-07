import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.summaryData});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:
        summaryData.map((data){
          return Row(
            children: [
              Text(((data['question'] as int) + 1).toString())
            ],
          )
        },).toList(),
    );
  }
}
