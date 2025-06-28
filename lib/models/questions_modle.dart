import 'package:flutter_firsttest/models/answer_model.dart';

class QuestionsModle {
  final title;
  List<AnswerModel> answerList;
  QuestionsModle({required this.title, required this.answerList});
}

List<QuestionsModle> questions = [
  QuestionsModle(
    title: 'What your fav food',
    answerList: [
      AnswerModel(title: 'Mansaf', onPress: () {}),
      AnswerModel(title: 'Pasta', onPress: () {}),
      AnswerModel(title: 'Pizza', onPress: () {}),
      AnswerModel(title: 'Kabsa ', onPress: () {}),
    ],
  ),
  QuestionsModle(
    title: 'What your fav color',
    answerList: [
      AnswerModel(title: 'Red', onPress: () {}),
      AnswerModel(title: 'blue', onPress: () {}),
      AnswerModel(title: 'green', onPress: () {}),
      AnswerModel(title: 'White ', onPress: () {}),
    ],
  ),
  QuestionsModle(
    title: 'What your fav team',
    answerList: [
      AnswerModel(title: 'FCB', onPress: () {}),
      AnswerModel(title: 'Madrid', onPress: () {}),
      AnswerModel(title: 'MC', onPress: () {}),
      AnswerModel(title: 'Porto', onPress: () {}),
    ],
  ),
  QuestionsModle(
    title: 'What your fav car',
    answerList: [
      AnswerModel(title: 'McLaren', onPress: () {}),
      AnswerModel(title: 'BMW', onPress: () {}),
      AnswerModel(title: 'Audi', onPress: () {}),
      AnswerModel(title: 'KiA ', onPress: () {}),
    ],
  ),
];
