import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        home: MyApp(),
        debugShowCheckedModeBanner: false,
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('ASK ME ANYTHING!'),
          titleTextStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
              color: Colors.white),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blue[300],
        body: const Center(
          child: Padding(
            padding: EdgeInsets.all(24.0),
            child: Ball(),
          ),
        ),
      ),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key});

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int n = 1;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          n = Random().nextInt(5) + 1;
        });
      },
      child: Image.asset('images/ball$n.png'),
    );
  }
}
