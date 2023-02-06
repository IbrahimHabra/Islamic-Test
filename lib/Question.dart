import 'package:quizzler/Answer.dart';

import 'Answers.dart';

class Question {
  String q = '';
  Answers ans = Answers(Answer('', true), Answer('', false), Answer('', false),
      Answer('', false));
  Question(
    String q,
    Answer a,
    Answer b,
    Answer c,
    Answer d,
  ) {
    this.q = q;
    ans = Answers(a, b, c, d);
  }

  bool isCorrect(Answer ans) {
    return ans.isRight;
  }
}
