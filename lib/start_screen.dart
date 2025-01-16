import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'asset/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(155, 255, 255, 255),
          ),
          const SizedBox(height: 80,),
          const Text('Learn Flutter the fun way!!!' ,
          style:TextStyle(
            color: Color.fromARGB(255, 236, 206, 8),
            fontSize: 20,
          )
          ),
          const SizedBox(height: 30,),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style:OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
          icon: const Icon(Icons.arrow_right_alt, color: Colors.white,),
          label: const Text('Strat Quiz'))
        ],
      ),
    );
  }
}
