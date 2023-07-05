import 'package:flutter/material.dart';
import 'package:quiz/data/questions.dart';

import 'start_screeen.dart';
import 'questions.screen.dart';
import 'results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  var activeScreen = "start-screen";

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = "result-screen";
        selectedAnswers = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == "start-screen") {
      screenWidget = StartScreen(switchScreen);
    } else if (activeScreen == "question-screen") {
      screenWidget = QuestionScreen(onSelecAnswer: chooseAnswer);
    } else
      screenWidget = ResultScreen();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 163, 139, 220),
                  Color.fromARGB(255, 8, 94, 97),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: screenWidget),
      ),
    );
  }
}
