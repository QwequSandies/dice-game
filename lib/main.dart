import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text('Dicey'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var lDNumber = 6; //lDNumber is short for LeftDiceNumber
    return Center(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Left dice got pressed');
                },
                child: Image.asset('images/dice$lDNumber.png'),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  print('Right dice got pressed');
                },
                child: Image.asset('images/dice2.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
