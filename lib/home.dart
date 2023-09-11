import 'package:flutter/material.dart';
import 'package:quizapp/quiz.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-comic-pop-art-style_175838-505.avif',
            width: 300,
          ),
          const SizedBox(
            height: 80,
          ),
        
           const  SizedBox(height: 50,),
           ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))
            ),
            onPressed: (){

              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Quiz();
              },));
            },
            icon:const Icon(Icons.arrow_back,size: 28,),
             label:const Text(
            
            'Start Quiz',
            style: TextStyle(
                fontSize: 40, color: Color.fromARGB(255, 247, 242, 242), fontWeight: FontWeight.bold),
          ), )
        ],
      ),
    );
  }
}
