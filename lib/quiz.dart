import 'package:flutter/material.dart';
import 'package:quizapp/widget/custom_button.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: double.infinity,
        child:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
      
          children: [
           const   Text(
              'question 1.....',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
         const    SizedBox(
              height: 30,
            ),
            CustomButton(answer: 'Answer..1',onPressed: () {
              
            },),
           const  SizedBox(
              height: 30,
            ),
               CustomButton(answer: 'Answer..2',onPressed: () {
               
             },),
            const  SizedBox(
              height: 30,
            ),
               CustomButton(answer: 'Answer..3',onPressed: () {
                
              },),
          ],
        ),
      ),
    );
  }
}

