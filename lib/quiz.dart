

import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';

import 'package:quizapp/widget/custom_button.dart';
import 'package:quizapp/widget/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
 
  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
 var index=0;
 List<String>answerr=[];

 void choiceanswer(String answer){
         answerr.add(answer);
        
         
                        
                      
                      
 }
  @override
  Widget build(BuildContext context) {
    
     var currentquestion=question[index];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 1, 46),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                currentquestion.text,
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
             ... currentquestion.getshuffled().map((e) {
                return CustomButton(
               
                  answer: e,
                  
                  onPressed: () {

                    setState(() {
                     choiceanswer(e);
                    if(index<question.length-1){
                      index++;}
                      else{
                        
  Navigator.push(context, MaterialPageRoute(builder: (context){
    return   Result( answers:answerr,);
    
  }));
  
}
}
                    
                    );
                    
                  },
                );
               
              },).toList(),
             
            
              const SizedBox(
                height: 150,
              ),
    

            ],
          ),
        ),
      ),
    );
  }
}
