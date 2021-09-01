import 'package:flutter/material.dart';

import './question.dart';
import './answers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    'Who is the Captain of the Indian Cricket Team?',
    'What is the Capital of India?',
    'Who is the Prime Minister of India?'
  ];
  final answers = const [
    ['Virat Kohli', 'Ishant Sharma', 'Ajinkya Rahane'],
    ['Lucknow', 'Delhi', 'Hyderabad'],
    ['Narendra Modi', 'Nitin Gadkari', 'Yogi']
  ];

  var index = 0;

  void nextQuestion() {
    setState(() {
      index = (index + 1) % questions.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Quiz App'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Question(
              question: questions[index],
            ),
            Answer(
              answers: answers[index],
              onPress: nextQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
