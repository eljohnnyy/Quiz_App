import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration:const  BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 1)
        ),
        child:const Scaffold(
          body: Home(),
        ),
      ),
    );
  }
}