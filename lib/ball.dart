import 'package:flutter/material.dart';
import 'dart:math';

class Ball extends StatefulWidget {
  Ball({Key key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  FlatButton buildballWidget(number) {
    return FlatButton(
      onPressed: () {
        setState(() {
          number = randomNumber();
        });
      },
      child: Image(
        image: AssetImage('images/ball$number.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: buildballWidget(randomNumber()),
      ),
    );
  }

  int randomNumber() {
    final _random = new Random();
    final _min = 1;
    final _max = 6;
    return _min + _random.nextInt(_max - _min);
  }
}
