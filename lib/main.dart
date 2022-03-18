import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text('Dicee')),
          backgroundColor: Colors.red,
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
  int leftDiceNum = 1, rightDiceNum = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          // padding: EdgeInsets.all(20),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: TextButton(
                  onPressed: () {
                    rand();
                  },
                  child: Image.asset('images/dice$leftDiceNum.png'),
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.symmetric(
              //       vertical: double.infinity, horizontal: 15),
              // ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    rand();
                  },
                  child: Image.asset('images/dice$rightDiceNum.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void rand() {
    setState(() {
      rightDiceNum = Random().nextInt(6) + 1;
      leftDiceNum = Random().nextInt(6) + 1;
    });
  }
}
