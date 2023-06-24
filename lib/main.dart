import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int BallNumber = 1;
  void MagicBall() {
    setState(() {
      BallNumber = Random().nextInt(4) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Center(
              child: Text(
            "MAGIC BALL",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          )),
        ),
        backgroundColor: Colors.green,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () {
                    MagicBall();
                  },
                  child: CircleAvatar(
                    radius: 150,
                    backgroundImage: AssetImage("images/ball$BallNumber.png"),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
