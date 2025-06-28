import 'package:flutter/material.dart';
import 'package:flutter_firsttest/models/questions_modle.dart';
import 'package:flutter_firsttest/widgets/questions_answers_widget.dart';
import 'package:flutter_firsttest/widgets/score_widget.dart';
import '';

import '../../widgets/answer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  int score = 0;
  int limitScore = questions.length * 5;
  bool scoreScreen = false;

  @override
  Widget build(BuildContext context) {
    scoreScreen = score >= limitScore;
    print(score);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.0, 0.5, 1.0],
            colors: [Colors.grey[900]!, Colors.grey[600]!, Colors.grey[300]!],
          ),
        ),
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,

            child: Padding(
              padding: const EdgeInsets.all(30),
              child: !scoreScreen
                  ? QuestionsAnswersWidget(
                      index: index,
                      increase: () {
                        setState(() {
                          if (index < questions.length - 1) {
                            index++;
                          }
                          score += 5;
                        });
                      },
                    )
                  : ScoreWidget(
                      score: score,
                      reset: () {
                        setState(() {
                          index = 0;
                          score = 0;
                        });
                      },
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
