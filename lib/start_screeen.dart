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
          OutlinedButton.icon(
            onPressed: () {},
            label: const Text(
              "Start the Quiz",
              style: TextStyle(fontSize: 19),
            ),
            icon: const Icon(Icons.trending_neutral_sharp),
            style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white, elevation: 1),
          )
        ],
      ),
    );
  }
}
