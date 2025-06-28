import 'package:flutter/material.dart';

import '../models/questions_modle.dart';
import 'answer_widget.dart';

class QuestionsAnswersWidget extends StatefulWidget {
  int index;
  VoidCallback increase;
  QuestionsAnswersWidget({required this.index, required this.increase});

  @override
  State<QuestionsAnswersWidget> createState() => _QuestionsAnswersWidgetState();
}

class _QuestionsAnswersWidgetState extends State<QuestionsAnswersWidget> {
  int chosen = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 50),
        Text(
          questions[widget.index].title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white70,
          ),
        ),
        SizedBox(height: 40),
        Column(
          children: List.generate(questions[widget.index].answerList.length, (
            i,
          ) {
            return AnswerWidget(
              answersModle: questions[widget.index].answerList[i],
              increseFun: () {
                setState(() {
                  chosen = i;
                });
              },
              isChosesn: chosen == i,
            );
          }),
        ),
        Spacer(),
        ElevatedButton(
          onPressed: () {
            widget.increase();
            chosen = -1;
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ), // لون النص أو الأيقونة
          ),
          child: Center(
            child: Text(
              "Next",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
