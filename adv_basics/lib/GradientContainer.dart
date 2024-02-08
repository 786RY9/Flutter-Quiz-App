import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuizContainer extends StatelessWidget {
  // const QuizContainer(this.color1, this.color2, {super.key});

  // final Color color1;
  // final Color color2;
  const QuizContainer(this.startQuiz, {super.key});

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
            color: const Color.fromARGB(150, 255, 255, 255),
          ),

          // Opacity(
          //   opacity: 0.8,
          //   child: Image.asset(
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(
            height: 40,
          ),
          Text(
            style: GoogleFonts.lato(
                color: Color.fromARGB(183, 60, 28, 244), fontSize: 30),
            'Learn Flutter the Fun Way',
          ),

          const SizedBox(
            height: 40,
          ),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 51, 25, 221),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
            ),
            onPressed: startQuiz,
            icon: const Icon(
              Icons.arrow_forward,
              color: Colors.white,
            ),
            label:
                const Text(style: TextStyle(color: Colors.white), 'Start Quiz'),
          ),
        ],
      ),
    );
  }
}
