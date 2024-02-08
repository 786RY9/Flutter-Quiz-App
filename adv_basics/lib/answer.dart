import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onTap});

  final String answerText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            
            ),
            
      
            shadowColor: Colors.blueAccent,
            backgroundColor: Color.fromARGB(223, 21, 77, 198),
            foregroundColor: Colors.white),
        onPressed: onTap,
        
        child: Text(style: const TextStyle(color: Colors.white,),textAlign:TextAlign.center, answerText),
      ),
    );
  }
}
