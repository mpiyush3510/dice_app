import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.redAccent,
          appBar: AppBar(
            backgroundColor: Colors.redAccent,
            title: Text(
              "Dice App",
              style: TextStyle(
                fontFamily: 'Martel',
                color: Colors.yellow,
              ),
            ),
          ),
          body: MyApp(),
        ),
      ),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var LeftDice = 2;
  var RightDice = 4;

  void changeDice() {
    setState(() {
      LeftDice = Random().nextInt(6) + 1;
      RightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$LeftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDice();
              },
              child: Image.asset('images/dice$RightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
