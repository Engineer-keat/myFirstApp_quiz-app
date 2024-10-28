import 'package:flutter/material.dart';

class AnswersButton extends StatelessWidget {
  const AnswersButton({
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
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(30),
          backgroundColor: const Color.fromARGB(255, 127, 36, 143),
          foregroundColor: Colors.white,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.horizontal())),
      child: Text(answerText, textAlign: TextAlign.center),
    );
  }
}
