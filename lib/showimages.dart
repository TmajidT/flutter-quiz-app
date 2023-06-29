import 'package:flutter/material.dart';

class showimages extends StatelessWidget {
  const showimages({super.key});

  final logo_image = "assets/images/quiz-logo.png";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          logo_image,
          width: 170,
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          "THE QUIZ APP!",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 50,
        )
      ],
    );
  }
}
