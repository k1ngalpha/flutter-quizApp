import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizMain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question(q: 'The world’s largest island is Greenland.', a: true),
    Question(q: 'The world’s longest coastline is in China.', a: false),
    Question(q: 'The first movie produced by Pixar was “Toy Story” ', a: true),
    Question(
        q: 'The purpose of a credit card and a debit card is the same.',
        a: false),
    Question(q: 'The most costly spice in the world is vanilla.', a: false),
    Question(
        q: 'Density and volume are used to calculate a cube’s mass.', a: true),
    Question(q: 'French fries are a French invention.', a: false),
    Question(
        q: 'The blue whale is the biggest known animal to have ever existed.',
        a: true),
    Question(q: 'Sharks are categorized as mammals.', a: false),
    Question(q: 'An ant can lift 2000 times its body weight.', a: false),
    Question(
        q: 'Brazil is the only country to have participated in each World Cup finals match. .',
        a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //To check if we have reached the last question
  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  //If we are at the last question we need to reset the question number
  void Reset() {
    _questionNumber = 0;
  }
}
