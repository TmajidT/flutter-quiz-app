import 'package:flutter/material.dart';

import 'GraidientCintainer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GraidientContainer(
          [
            Color.fromRGBO(82, 209, 240, 1),
            //Color.fromRGBO(27, 164, 188, 1),
            Color.fromRGBO(38, 192, 110, 1)
          ],
        ),
      ),
    );
  }
}
