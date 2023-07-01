import 'dart:ui';

import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 240,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Flutter Quize App",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Start the Quiz"),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, elevation: 1),
          )
        ],
      ),
    );
  }
}
