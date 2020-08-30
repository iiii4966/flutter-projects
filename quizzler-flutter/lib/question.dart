class Question {
  String question;
  bool answer;

  Question({String q, bool a}) {
    question = q;
    answer = a;
  }

  bool isCorrect(bool userAnswer) {
    if (this.answer == userAnswer) {
      return true;
    }
    return false;
  }
}
