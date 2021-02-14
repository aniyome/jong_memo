import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddGameScreen extends StatelessWidget {
  String title;
  String member1;
  String member2;
  String member3;
  String member4;
  String memberScore1;
  String memberScore2;
  String memberScore3;
  String memberScore4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Game',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                member1 = newText;
              },
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                member2 = newText;
              },
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                member3 = newText;
              },
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newText) {
                member4 = newText;
              },
            ),
            // FlatButton(
            //   child: Text(
            //     'Add',
            //     style: TextStyle(
            //       color: Colors.white,
            //     ),
            //   ),
            //   color: Colors.lightBlueAccent,
            //   onPressed: () {
            //     Provider.of<TaskData>(context).addTask(newTaskTitle);
            //     Navigator.pop(context);
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
