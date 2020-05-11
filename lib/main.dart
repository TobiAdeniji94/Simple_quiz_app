import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './quiz1.dart';

void main (){
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new QuizApp(),
    )
  );
}

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: Text("Multiple Choice Quiz"),
        backgroundColor: Colors.indigo,
      ),
      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 50.0,
              color: Colors.transparent,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    style: BorderStyle.solid,
                    //width: 1.0
                  ),
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: InkWell(
                  onTap: startQuiz,
                  child: Center(
                    child: Text('Click To Start Quiz',
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Method to start quiz
void startQuiz () {
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new Quiz1()));
      });
    }
}