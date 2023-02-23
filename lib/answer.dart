import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  const Answer(this.selectHandler, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            overlayColor:
                MaterialStatePropertyAll(Color.fromARGB(233, 222, 340, 1))),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
