import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';

import 'package:quizapp/main.dart';

import 'custom_button.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.answers});
final List<String>answers;
  
   get(){
 List<Map<String,Object>>summary=[];
 for(int i=0;i<answers.length;i++){
  summary.add({
'index':i,
'correct_ans':question[i].answers[0],
'ans':answers[i],
  }

  );
 }
 return summary;
  }
 
  @override
  Widget build(BuildContext context) {
    final data=get();
      int count=0;
    for(int i=0;i<answers.length;i++){
if(data[i]['correct_ans']==data[i]['ans']){
count++;
}
    }
    return   Scaffold(
     backgroundColor: const Color.fromARGB(255, 13, 1, 46),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   const   SizedBox(height: 50,),
                        const  Text(
                       'Congratulations',
                        style:  TextStyle(
                            fontSize: 50,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                     const  SizedBox(
                        height: 60,
                      ),
                      Text(
                       'You answered $count of ${answers.length}',
                        style:const  TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const  SizedBox(
                        height: 60,
                      ),
                        ... get().map((e) {
                  return    Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: e['ans']==e['correct_ans']? Colors.green:Colors.red,
          child: Text(((e['index']as int)+1).toString()),
                        ),
                     const   SizedBox(height: 20,),
                        Text(
                        e['ans'].toString(),
                              style:  TextStyle(
                                  fontSize: 20,
                                  color:e['ans']==e['correct_ans']? Colors.green:Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                             const   SizedBox(height: 20,),
                            Text(
                         e['correct_ans'].toString(),
                              style:const  TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                      ],
                    ),
                  );
                 
                },).toList(),
                     const  SizedBox(
                        height: 60,
                      ),
                    CustomButton(answer: 'RESTART',onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context){
                      return const  QuizApp();
                    }),);},)
                         
                     
                    
             
          
                    ],
                  ),
        ),
      ),
    );
   
  }
}