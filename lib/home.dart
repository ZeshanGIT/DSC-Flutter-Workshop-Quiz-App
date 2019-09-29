import 'package:demo/quiz.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: OutlineButton(
          padding: EdgeInsets.symmetric(horizontal: 64, vertical: 16),
          shape: StadiumBorder(),
          borderSide: BorderSide(
            color: Colors.white,
            width: 4,
          ),
          onPressed: () {
            Navigator.of(context).pushNamed("/quiz");
          },
          child: Text(
            "Start",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
