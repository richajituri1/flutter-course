import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText, 
    required this.onTap,
  });

  final String answerText;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style:  ButtonStyle(
        padding: const MaterialStatePropertyAll<EdgeInsets>(
          EdgeInsets.symmetric(horizontal: 40,
          vertical: 10 ),
        ),
        backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromARGB(255, 106, 0, 206)),
        foregroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: const BorderSide(color: Colors.white)
          )
        )
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
