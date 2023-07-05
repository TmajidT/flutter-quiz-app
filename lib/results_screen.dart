import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("you answer x questions"),
            const SizedBox(
              height: 25,
            ),
            const Text("data"),
            const SizedBox(
              height: 25,
            ),
            TextButton(onPressed: () {}, child: const Text("Restart Quiz"))
          ],
        ),
      ),
    );
  }
}
