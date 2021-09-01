import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final List<String> answers;
  final Function onPress;

  Answer({this.answers, this.onPress});

  Column getAnswerButtons(List<String> ans) {
    List<RaisedButton> list = new List<RaisedButton>();
    for (var a in ans) {
      list.add(RaisedButton(
        child: Text(a),
        onPressed: onPress,
      ));
    }
    return Column(
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return getAnswerButtons(answers);
  }
}
