import 'dart:math';

import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen();

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> countries = [
    "Estonia",
    "France",
    "Germany",
    "Ireland",
    "Italy",
    "Monaco",
    "Nigeria",
    "Poland",
    "Russia",
    "Spain",
    "UK",
    "US",
  ];

  int num = Random().nextInt(12);

  @override
  void initState() { // initState is the function first work on StatefulWidget
    super.initState();
    countries.shuffle(); // to reorder the list by random
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 16),
              Text(
                // "Guess The Flag?",
                countries[num],
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                ),
              ),
              Text(
                "Country Name",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 30),
              for(int i=0; i<3; i++)
              FlagButton(
                name: countries[i],
                onPressed: () {
                  setState(() {
                    countries.shuffle();
                    num = Random().nextInt(3);
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FlagButton extends StatelessWidget {
  const FlagButton({Key? key, required this.name, required this.onPressed})
      : super(key: key);

  final String name;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Image.asset(
        "assets/countries/$name.png",
        height: 145,
      ),
    );
  }
}
