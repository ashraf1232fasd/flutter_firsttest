import 'package:flutter/material.dart';
import 'package:flutter_firsttest/models/questions_modle.dart';

import '../models/answer_model.dart';

class AnswerWidget extends StatelessWidget {
  AnswerModel answersModle;
  VoidCallback increseFun;
  bool isChosesn = false;
  AnswerWidget({
    required this.answersModle,
    required this.increseFun,
    required this.isChosesn,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            answersModle.onPress();
            increseFun();
          },
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: isChosesn ? Colors.grey[900] : Colors.grey[600],
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.black, width: 2.3),
            ),

            child: SizedBox(
              height: 55,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.check_circle_rounded,
                      size: 20,
                      color: Colors.white70,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      answersModle.title,
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
