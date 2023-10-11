import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget{
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
          return Row(children: [
             Text(((data['question_index'] as int) + 1).toString(),),
            Expanded(
              child: Column(children: [
                const SizedBox(height: 5,),
                // Text(((data['question_index'] as int) + 1).toString(),),
                Text(data['question'] as String, textAlign: TextAlign.center,),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Your answer: ', textAlign: TextAlign.center,),Text(data['user_answer'] as String, textAlign: TextAlign.center,),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Correct answer: ', textAlign: TextAlign.center,),Text(data['correct_answer'] as String, textAlign: TextAlign.center,),
                  ],
                ),  
                const SizedBox(height: 20,),
              ],),
            ),
          ],);
        }).toList(),
        ),
      ),
    );
  }
}