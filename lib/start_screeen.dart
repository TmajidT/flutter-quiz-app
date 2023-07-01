import 'dart:ui';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 240,
            color: Color.fromARGB(140, 255, 255, 255),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Flutter Quize App",
            style: TextStyle(
              color: Color.fromARGB(181, 255, 255, 255),
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            label: const Text(
              "Start the Quiz",
              style: TextStyle(fontSize: 19),
            ),
            icon: const Icon(Icons.quiz),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, elevation: 1),
          )
        ],
      ),
    );
  }
}
