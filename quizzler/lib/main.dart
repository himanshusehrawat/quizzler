import 'package:flutter/material.dart';
//import 'package:quizzler/Ques.dart';
import 'package:quizzler/QuesBrain.dart';
//done: Step 2 - Import the rFlutter_Alert package here.
import 'package:rflutter_alert/rflutter_alert.dart';

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
  List ScoreKeeper = <Icon>[];


  QuesBrain qb = new QuesBrain();

  void CheckAns( bool UserPickedAns ) {
    bool correctans = qb.getAns();
    if (UserPickedAns == correctans) {
      print(" User got it right !!");
      setState(( ) {
        ScoreKeeper.add(
          Icon(
            Icons.check ,
            color: Colors.green ,
          ) ,
        );

        qb.NextQues();
        if(qb.isFinished()==true){
          Alert(context: context, title: "Quiz khatam hogaya re baba", desc: "East or West, Aditi is the best!!").show();
          ScoreKeeper.clear();
          qb.restart();

          //qb.isFinished();
        }

//                    quesNum++;
//                    print("Ques nUm $quesNum");
      });
    } else {
      print(" User got it wrong !!");
      setState(( ) {
        ScoreKeeper.add(
          Icon(
            Icons.close ,
            color: Colors.red ,
          ) ,
        );
        qb.NextQues();
        if(qb.isFinished()==true){
          Alert(context: context, title: "Quiz khatam hogaya re baba", desc: "East or West, Aditi is the best!!").show();
          ScoreKeeper.clear();
          //qb.isFinished();
          qb.restart();
        }
//                    quesNum++;
//                    print("Ques nUm $quesNum");
      });
    }
  }
//  List<String> questions =[
//    'You can lead a cow down stairs but not up stairs.',
//    'Approximately one quarter of human bones are in the feet.',
//    'A slug\'s blood is green.'
//
//  ];
//
//  List<bool> answers =[
//    false,
//    true,
//    true
//  ];

    //Ques q1 = Ques(q:'You can lead a cow down stairs but not up stairs.', a: false);

//  List<Ques> questionBank = [
//    Ques(q: 'You can lead a cow down stairs but not up stairs.', a: false),
//    Ques(
//        q: 'Approximately one quarter of human bones are in the feet.',
//        a: true),
//    Ques(q: 'A slug\'s blood is green.', a: true)
//  ];

    //int quesNum = 0;

    //int quesNum = 0;
    @override
    Widget build( BuildContext context ) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        crossAxisAlignment: CrossAxisAlignment.stretch ,
        children: <Widget>[
          Expanded(
            flex: 5 ,
            child: Padding(
              padding: EdgeInsets.all(10.0) ,
              child: Center(
                child: Text(
                  //'This is where the question text will go.',
                  qb.getQuesText() ,
                  textAlign: TextAlign.center ,
                  style: TextStyle(
                    fontSize: 25.0 ,
                    color: Colors.white ,
                  ) ,
                ) ,
              ) ,
            ) ,
          ) ,

          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0) ,
              child: FlatButton(
                textColor: Colors.white ,
                color: Colors.green ,
                child: Text(
                  'True' ,
                  style: TextStyle(
                    color: Colors.white ,
                    fontSize: 20.0 ,
                  ) ,
                ) ,
                onPressed: ( ) {
//                bool correctans = qb.getAns();
//                if (correctans == true) {
//                  print(" User got it right !!");
//                  setState(() {
//                    ScoreKeeper.add(
//                      Icon(
//                        Icons.check,
//                        color: Colors.green,
//                      ),
//                    );
//
//                    qb.NextQues();
//
////                    quesNum++;
////                    print("Ques nUm $quesNum");
//                  });
//                } else {
//                  print(" User got it wrong !!");
//                  setState(() {
//                    ScoreKeeper.add(
//                      Icon(
//                        Icons.close,
//                        color: Colors.red,
//                      ),
//                    );
//                      qb.NextQues();
////                    quesNum++;
////                    print("Ques nUm $quesNum");
//                  });
//                }

//                setState(() {
//                  ScoreKeeper.add(
//                    Icon(
//                      Icons.check,
//                      color: Colors.green,
//                    ),
//                  );
//                  //quesNum++;
//                  //print("Ques nUm $quesNum");
//                }
                  //The user picked true.
                  CheckAns(true);
                } ,
              ) ,
            ) ,
          ) ,
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0) ,
              child: FlatButton(
                color: Colors.red ,
                child: Text(
                  'False' ,
                  style: TextStyle(
                    fontSize: 20.0 ,
                    color: Colors.white ,
                  ) ,
                ) ,
                onPressed: ( ) {
//                bool correctans = qb.getAns();
//
//                if (correctans == false) {
//                  print(" User got it right !!");
//                  setState(() {
//                    ScoreKeeper.add(
//                      Icon(
//                        Icons.check,
//                        color: Colors.green,
//                      ),
//                    );
//
//                      qb.NextQues();
////                    quesNum++;
////                    print("Ques nUm $quesNum");
//                    //quesNum++;
//                    //print("Ques nUm $quesNum");
//                  });
//                } else {
//                  print(" User got it wrong !!");
//                      setState(() {
//
//
//                      ScoreKeeper.add(
//                      Icon(
//                      Icons.close,
//                      color: Colors.red,
//                  ),
//                  );
//
//                      qb.NextQues();
////                      quesNum++;
////                      print("Ques nUm $quesNum");
//                      }}

//                setState(() {
//                  ScoreKeeper.add(
//                    Icon(
//                      Icons.close,
//                      color: Colors.red,
//                    ),
//                  );
//                  //quesNum++;
//                  //print("Ques nUm $quesNum");
//                });
                  //The user picked false.
                  CheckAns(false);
                } ,
              ) ,
            ) ,
          ) ,
          //done: Add a Row here as your score keeper

          Row(
            children: ScoreKeeper ,
          )
        ] ,
      );
    }
  }


/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
