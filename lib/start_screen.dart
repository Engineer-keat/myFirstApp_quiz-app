import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final Function startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
            opacity: 0.5,
            child: Image.asset(
              'assets/images/quiz-logo.png',
              width: 300,
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'hello there!',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 28),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.arrow_right_alt),
            style: OutlinedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {
              startQuiz();
            },
            label: const Text('start quiz'),
          )
        ],
      ),
    );
  }
}
