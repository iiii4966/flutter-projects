import 'package:quizzler/question.dart';

class Quiz {
  int _questionNumber = 0;
  List<Question> questions = [
    Question(q: 'hello world', a: true),
    Question(q: 'hello world1', a: true),
    Question(q: 'hello world2', a: false),
    Question(q: 'hello world3', a: true),
    Question(q: 'hello world4', a: true),
    Question(q: 'hello world5', a: true),
    Question(q: 'hello world6', a: false),
    Question(q: 'hello world7', a: true),
  ];

  getQuestion() => questions[_questionNumber];

  void getNextQuestion() {
    if (_questionNumber < questions.length - 1) {
      _questionNumber++;
    }
  }
}
