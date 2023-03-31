import 'question.dart';

class QuizBrain {
  int _queNo = 0;
  List<Question> _questionBank = [
    Question('You can lead a cow downstairs but not upstairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Delhi is the capital of India.', true),
    Question('Ram and Laxman in Ramayana were brothers.', true),
    Question('There are 24 alphabets in english language.', false)
  ];

  void nextQuestion() {
    if (_queNo < _questionBank.length - 1) {
      _queNo++;
    }
  }

  String getQuestionText() {
    return _questionBank[_queNo].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_queNo].questionAnswer;
  }

  bool isFinished() {
    if (_queNo >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void resetQuestions() {
    _queNo = 0;
  }
}
