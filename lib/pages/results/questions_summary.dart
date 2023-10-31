import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary({required this.summaryData, super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              children: [
                CircleAvatar(
                  backgroundColor:
                      (data['correct_answer'] == data['user_answer'])
                          ? Colors.greenAccent
                          : Colors.redAccent,
                  child: Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['question'] as String,
                        style: const TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(data['user_answer'] as String, style: TextStyle(color: Colors.redAccent),),
                      Text(data['correct_answer'] as String, style: TextStyle(color: Colors.greenAccent),),
                      SizedBox(height: 20,)
                    ],
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
