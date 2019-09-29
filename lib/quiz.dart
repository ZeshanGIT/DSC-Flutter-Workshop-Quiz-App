import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  @override
  _QuizState createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Color bgColor = Colors.teal;
  List<String> opts = ["Google", "Archie", "Yahoo"];
  int correctAnswer = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "Which is the first search engine on the Internet ?",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
              ),
            ),
            ...List.generate(
              3,
              (i) => OutlineButton(
                shape: StadiumBorder(),
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 64,
                  vertical: 16,
                ),
                onPressed: () {
                  setState(() {
                    bgColor = i == correctAnswer ? Colors.green : Colors.red;
                  });
                },
                child: Text(
                  opts[i],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
