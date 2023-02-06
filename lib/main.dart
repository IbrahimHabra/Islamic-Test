// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:quizzler/Brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(MyApp());

Brain brain = Brain();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzer',
      home: Scaffold(
        backgroundColor: Colors.blueGrey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizzerPage(),
          ),
        ),
      ),
    );
  }
}

class QuizzerPage extends StatefulWidget {
  const QuizzerPage({Key? key}) : super(key: key);

  @override
  State<QuizzerPage> createState() => _QuizzerPageState();
}

class _QuizzerPageState extends State<QuizzerPage> {
  int n = 0;
  Color bc = Colors.cyan;
  void counter() {
    n++;
    if (n > 10) {
      endApp();
    }
  }

  bool check(int i) {
    if (brain.isAnsCor(brain.getAnswers()[i])) {
      icons.add(
        Icon(
          Icons.check,
          color: Colors.greenAccent,
        ),
      );
    } else {
      icons.add(
        Icon(
          Icons.close,
          color: Colors.redAccent,
        ),
      );
    }
    return (brain.isAnsCor(brain.getAnswers()[i]));
  }

  void endApp() {
    n = 0;
    Alert(
      context: context,
      //image: Image.asset('assets/images/icon_info.png'),
      title: "لقد انتهيت",
      desc: "انقر للبدء من جديد",
      buttons: [
        DialogButton(
          child: Text("إعادة البدء"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ],
      type: AlertType.success,
    ).show();

    brain.reset();
    icons = [];
  }

  List<Icon> icons = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                brain.getQuestion(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (check(0)) {
                        print("right");
                      }
                      brain.update();
                      counter();
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: bc,
                  ),
                  child: Text(
                    brain.getAnswers()[0].ans,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (check(1)) {
                        print("right");
                      }
                      brain.update();
                      counter();
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: bc,
                  ),
                  child: Text(
                    brain.getAnswers()[1].ans,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )),
        Expanded(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (check(2)) {
                        print("right");
                      }
                      brain.update();
                      counter();
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: bc,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    brain.getAnswers()[2].ans,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      if (check(3)) {
                        print("right");
                      }
                      brain.update();
                      counter();
                    });
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: bc,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    brain.getAnswers()[3].ans,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        )),
        Row(
          children: icons,
        )
      ],
    );
  }
}
