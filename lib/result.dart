import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;
  const Result(this.resultScore, this.resetQuiz, {super.key});

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (resultScore <= 12) {
      resultText = 'Pretty likeable!';
    } else if (resultScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        TextButton(
          style: TextButton.styleFrom(
            textStyle: const TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          onPressed: resetQuiz,
          child: const Text('Restart quiz!'),
        )
      ],
    ));
  }
}
