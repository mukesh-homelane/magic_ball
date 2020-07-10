import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MagicApp());
}

class MagicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Show My Future"),
          backgroundColor: Colors.red,
        ),
        body: Ball(),
        backgroundColor: Colors.cyanAccent,
      ),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(4) + 1;
          });
          print("Button is pressed");
        },
        child: Image.asset("images/ball$ballNumber.png"),
      ),
    );
  }
}
