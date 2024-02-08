import 'package:adv_basics/data/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/models/questions_summary/questions_summary.dart';


class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.chosenAnswers,
    required this.onRestart,
  });

  final void Function() onRestart;
  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': questions[i].question,
        'correct-answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryDAta = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryDAta.where((data) {
      return data['user_answer'] == data['correct-answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $numCorrectQuestions questions correctly out of $numTotalQuestions',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Color.fromARGB(199, 25, 5, 245), fontSize: 24),
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(summaryDAta),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(iconColor: Colors.white),
              onPressed: onRestart,
              icon: const Icon(Icons.refresh),
              label: const Text(
                  style: TextStyle(
                      color: Color.fromARGB(197, 255, 255, 255), fontSize: 24),
                  'Restart Quiz'),
            ),
          ],
        ),
      ),
    );
  }
}
