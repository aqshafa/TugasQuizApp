import 'package:tugas_quiz_app/question.dart';

class QuestionLogic {
  int _questionNumber = 0;
  List<Question> _questionList = [
    Question('Sleep while proning', false),
    Question('Reciting prayer before sleeping', true),
    Question('Reading alquran in bathroom', false),
    Question('Taking ablution before sleeping', true),
    Question('Do sholat in other sholat time', false),
    Question('Talking while adzan', false),
    Question('Use something that cover aurat when sholat', true),
    Question('Sleeping while khutbah', false),
    Question('Eat pigs', false),
    Question('Put alquran in high place', true),
  ];

  String getQuestion() => _questionList[_questionNumber].question;

  int getQuestionNumberText() => _questionNumber + 1;

  int getTotalQuestionText() => _questionList.length;

  bool getCorrectAnswer() => _questionList[_questionNumber].answer;

  void nextQuestion() {
    if (_questionNumber < _questionList.length - 1) {
      _questionNumber++;
      print(_questionNumber);
    }
  }

  bool isFinished() {
    if (_questionNumber >= _questionList.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void resetQuestion() => _questionNumber = 0;
}
