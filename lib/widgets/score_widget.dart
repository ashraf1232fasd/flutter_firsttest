import 'package:flutter/material.dart';

class ScoreWidget extends StatelessWidget {
  int score;
  VoidCallback reset;
  ScoreWidget({required this.score, required this.reset});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '🎉',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        Text(
          ' Congrats! Your Score = $score',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

        ),

        SizedBox(height: 30),
        TextButton(
          onPressed: reset,
          child: Text(
            'Reset',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
