import 'package:flutter/material.dart';
import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'Terminaste',
  ];

  List<bool> respuestas = [
    true, //  0
    false, //  1
    true, //  2
    false, //  3
    true, //  4
    false, //  5
    true, //  6
    true, //  7
    false, //  8
    true, //  9
    false, //  10
    true, //  11
    false, //  12
    true, //  13
    false, //  14
  ];

  List<Question> preguntasLista = [
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

  int questionNumber = 0;

  void cambioPreguntas(bool respuestaPregunta) {
    if (questionNumber < 14) {
      questionNumber++;
      if (respuestaPregunta ==
          preguntasLista[questionNumber - 1].questionAnswer) {
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
    } else {
      print(questionNumber);
      //questionNumber++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                preguntasLista[questionNumber].questionText,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {
                  cambioPreguntas(true);
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  cambioPreguntas(false);
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
