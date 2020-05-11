import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import './main.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new QuizApp();



class QuizApp {
  var images = [
    'alligator', 'cat', 'dog', "owl"
  ];

  var questions = [
    "This animal is a carnivorous reptile. What is it?",
    "________ likes to chase mice and birds.",
    "Give a ________ a bone and it'll finds its way home",
    "A nocturnal animal with big eyes.",
  ];
  var choices =  [
    ["Cat", "Sheep", "Alligator", "Cow"],
    ["Cat", "Snail", "Slug", "Horse"],
    ["Mouse", "Dog", "Elephant", "Donkey"],
    ["Spider", "Snake", "Hawk", "Owl"]
  ];

  var correctAnswers = [
    "Alligator", "Cat", "Dog", "Owl"
  ];
}

class Quiz1 extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return new Quiz1State();
  }

}

class Quiz1State extends State <Quiz1> {
  Color colorToShow = Colors.indigoAccent;
  Color right = Colors.green;
  Color wrong = Colors.red;

  Map<String, Color> btncolor = {
    "0": Colors.indigoAccent,
    "1": Colors.indigoAccent,
    "2": Colors.indigoAccent,
    "3": Colors.indigoAccent,
  };


  void checkanswer0 (String k){
    if (quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]) {
      colorToShow = right;
      finalScore++;
    } else {
      colorToShow = wrong;

    }
    setState(() {
      btncolor ["0"] = colorToShow;
    });

  }

  void checkanswer1 (String k){
    if (quiz.choices[questionNumber][1] == quiz.correctAnswers[questionNumber]) {
      colorToShow = right;
      finalScore++;
    } else {
      colorToShow = wrong;

    }
    setState(() {
      btncolor ["1"] = colorToShow;
    });

  }

  void checkanswer2 (String k){
    if (quiz.choices[questionNumber][2] == quiz.correctAnswers[questionNumber]) {
      colorToShow = right;
      finalScore++;
    } else {
      colorToShow = wrong;

    }
    setState(() {
      btncolor ["2"] = colorToShow;
    });

  }

  void checkanswer3 (String k){
    if (quiz.choices[questionNumber][3] == quiz.correctAnswers[questionNumber]) {
      colorToShow = right;
      finalScore++;
    } else {
      colorToShow = wrong;

    }
    setState(() {
      btncolor ["3"] = colorToShow;
    });

  }

  Widget choiceButton0 (String k){
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 5.0,
        horizontal: 5.0
      ),
      child: MaterialButton(
        onPressed: () => checkanswer0 (k),
        child: Text(
        quiz.choices[questionNumber][0],
          style: TextStyle(
            color: Colors.white,
          ),
          maxLines: 1,
        ),
        color: btncolor["0"],
        splashColor: Colors.indigoAccent[700],
        highlightColor: Colors.indigo[700],
        minWidth: 100.0,
        height: 40.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget choiceButton1 (String k){
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5.0
      ),
      child: MaterialButton(
        onPressed: () => checkanswer1 (k),
        child: Text(
          quiz.choices[questionNumber][1],
          style: TextStyle(
            color: Colors.white,
          ),
          maxLines: 1,
        ),
        color: btncolor["1"],
        splashColor: Colors.indigoAccent[700],
        highlightColor: Colors.indigo[700],
        minWidth: 100.0,
        height: 40.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget choiceButton2 (String k){
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5.0
      ),
      child: MaterialButton(
        onPressed: () => checkanswer2 (k),
        child: Text(
          quiz.choices[questionNumber][2],
          style: TextStyle(
            color: Colors.white,
          ),
          maxLines: 1,
        ),
        color: btncolor["2"],
        splashColor: Colors.indigoAccent[700],
        highlightColor: Colors.indigo[700],
        minWidth: 100.0,
        height: 40.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget choiceButton3 (String k){
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 5.0,
          horizontal: 5.0
      ),
      child: MaterialButton(
        onPressed: () => checkanswer3 (k),
        child: Text(
          quiz.choices[questionNumber][3],
          style: TextStyle(
            color: Colors.white,
          ),
          maxLines: 1,
        ),
        color: btncolor["3"],
        splashColor: Colors.indigoAccent[700],
        highlightColor: Colors.indigo[700],
        minWidth: 100.0,
        height: 40.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new WillPopScope (
        onWillPop: () {
          return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                  'Multiple Choice Quiz'
              ),
              content: Text(
                  "You Can't Go Back At This Stage"
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'))
              ],
            )
          );
        },
        child: Scaffold(
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(15.0)),
                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text('Question ${questionNumber + 1}/${quiz.questions.length}',
                        style: new TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      new Text('Score: $finalScore ',
                        style: new TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                ),
                
                //Image
                new Padding(padding: EdgeInsets.all(1.0)),
                new Image.asset(
                  "images/${quiz.images[questionNumber]}.jpg",
                  height: 250,
                  width: 250,
                ),

                new Padding(padding: EdgeInsets.all(1.0)),
                new Text (
                  quiz.questions[questionNumber],
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    choiceButton0("0"),
                    choiceButton1("1")
                  ],
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    choiceButton2("2"),
                    choiceButton3("3")
                  ],
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  padding: EdgeInsets.only(left:30.0, right: 30.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0
                        ),
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: InkWell(
                      onTap: updateQuestion,
                      child: Center(
                        child: Text('Next',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }

  void resetQuiz(){
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion () {
    setState(() {
      if (questionNumber == quiz.questions.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context) => new Summary(score: finalScore,)));

      } else {
        questionNumber++;
      }
      btncolor["0"] = Colors.indigoAccent;
      btncolor["1"] = Colors.indigoAccent;
      btncolor["2"] = Colors.indigoAccent;
      btncolor["3"] = Colors.indigoAccent;
    });
  }
  
}

class Summary extends StatelessWidget {
  final int score;
  Summary ({Key key, @required this.score}) : super (key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                  'Multiple Choice Quiz'
              ),
              content: Text(
                  "You Can't Go Back At This Stage. Click The Reset Button To Start Over"
              ),
              actions: <Widget>[
                FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'))
              ],
            )
        );
      },
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(top: 100.0, left: 80.0, right: 80.0),
                      child: Center(
                        child: Text('Final Score: $score',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40.0,
                      padding: EdgeInsets.only(left:30.0, right: 30.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.red,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20.0)
                        ),
                        child: InkWell(
                          onTap: (){
                            questionNumber = 0;
                            finalScore = 0;
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => new Quiz1()));
                          },
                          child: Center(
                            child: Text(
                              'Reset Quiz',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
  
  
}