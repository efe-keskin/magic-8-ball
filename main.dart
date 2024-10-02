import 'package:flutter/material.dart';
import 'dart:math' ;
void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 Ball',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Color(0xFF516ca9),
        ),
      body: Ball(),),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 5;
  void gestureDetected(){
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
      print(ballNumber);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onDoubleTap: () {gestureDetected();

        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),

    );
  }
}
