import 'question.dart';

class Quizbrain {
  List<Question> _preguntasLista = [
    Question(q: 'You can lead a cow down', a: false),
    Question(q: 'Iron Man', a: false),
    Question(q: 'Superman', a: false),
    Question(q: 'Batman', a: false),
    Question(q: 'Thor', a: false),
    Question(q: 'Green Lantern', a: false),
    Question(q: 'Spawn', a: false),
    Question(q: 'Goku', a: false),
    Question(q: 'Bishop', a: false),
    Question(q: 'Punisher', a: false),
    Question(q: 'Compton', a: false),
    Question(q: 'Grill', a: false),
    Question(q: 'Force One', a: false),
    Question(q: 'Paulina', a: true),
    Question(q: 'Victor', a: true),
  ];

  String getQuestionText(int questionNumber) {
    return _preguntasLista[questionNumber].questionText;
  }

  bool getQuestionBool(int questionNumber) {
    return _preguntasLista[questionNumber].questionAnswer;
  }
}
