
import 'package:flutter/material.dart';
import 'package:quizapp/data/question.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.answer, this.onPressed,  this.answers,this.color=Colors.blue
  });
final String answer;
final Color? color;
final String? answers;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ElevatedButton(
        
        style: ElevatedButton.styleFrom(
          backgroundColor:color,
          padding: const EdgeInsets.all(8),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
        onPressed:onPressed ,
        child:  Text(
        
         answer ,
         textAlign: TextAlign.center,
          style:const TextStyle(
            
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
