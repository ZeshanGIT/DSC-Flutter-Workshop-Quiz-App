import 'package:demo/quiz.dart';
import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (_) => Home(),
        "/quiz": (_) => Quiz(),
      },
      theme: ThemeData(fontFamily: "ProductSans"),
    );
  }
}
