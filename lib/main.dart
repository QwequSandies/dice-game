import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicey'),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int lDNumber = 1; //lDNumber is short for LeftDiceNumber
  int rDNumber = 1; //rDNumber is short for RightDiceNumber

  void randomiser() {
    setState(() {
      rDNumber = Random().nextInt(6) + 1;
      lDNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  randomiser();
                },
                child: Image.asset('images/dice$lDNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  randomiser();
                },
                child: Image.asset('images/dice$rDNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
