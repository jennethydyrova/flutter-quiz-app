import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // const Answer({ Key? key }) : super(key: key);
  final Function selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answer),
        textColor: Colors.white,
        onPressed: selectHandler,
        color: Colors.blue,
      ),
    );
  }
}
