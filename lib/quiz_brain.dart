import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
      questionText: 'Flutter is a programming language developed by Google.',
      questionAnswer: false,
    ),
    Question(
      questionText: 'Widgets are the basic building blocks of a Flutter app.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'In Flutter, the main() function is the entry point of every app.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'setState() is used in Flutter to update the UI in StatefulWidget.',
      questionAnswer: true,
    ),
    Question(
      questionText: 'Hot Reload in Flutter helps developers see code changes instantly without losing the app state.',
      questionAnswer: true,
    ),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}