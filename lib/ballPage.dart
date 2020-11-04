import 'package:flutter/material.dart';
import 'package:magic_8_ball/ball.dart';
import 'ball.dart';

class BallPage extends StatelessWidget {
  const BallPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Ask Me Anything'),
      ),
      body: Center(
        child: Ball(),
      ),
    );
  }
}
