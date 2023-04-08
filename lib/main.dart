import 'package:flutter/material.dart';
import 'package:guess_the_flag/QuizScreen.dart';
// next time I will start here and remove this comment today 17th Ramadan.
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: QuizScreen(),
    );
  }
}

