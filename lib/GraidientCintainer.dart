import 'package:flutter/material.dart';

import 'showimages.dart';

class GraidientContainer extends StatelessWidget {
  const GraidientContainer(this.color, {super.key});

  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: color,
      )),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const showimages(),
            OutlinedButton(
              onPressed: null,
              style: OutlinedButton.styleFrom(
                  foregroundColor: const Color.fromARGB(255, 251, 251, 251)),
              child: Text("start the quiz"),
            )
          ],
        ),
      ),
    );
  }
}
