
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.answer, this.onPressed,
  });
final String answer;
final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        padding: const EdgeInsets.all(8),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16))),
      onPressed:onPressed ,
      child:  Text(
      
       answer ,
        style:const TextStyle(
            fontSize: 40,
            color: Color.fromARGB(255, 247, 242, 242),
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
