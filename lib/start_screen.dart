import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(255, 37, 2, 107),
          ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter the Fun Way',
            style:  GoogleFonts.lato(
               color: const Color.fromARGB(255, 54, 9, 143),fontSize: 24,
               fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30),
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt, color: Colors.white),
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
