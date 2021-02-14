import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jong_memo/models/game.dart';
import 'package:jong_memo/models/game_data.dart';
import 'package:provider/provider.dart';

class AddGameScreen extends StatefulWidget {
  @override
  _AddGameScreenState createState() => _AddGameScreenState();
}

class _AddGameScreenState extends State<AddGameScreen> {
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
            Row(children: [
              Text("メンバー1"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    member1 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    memberScore1 = newText;
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー2"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    member2 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    memberScore2 = newText;
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー3"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    member3 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    memberScore3 = newText;
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー4"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    member4 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextField(
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    memberScore4 = newText;
                  },
                ),
              ),
            ]),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
              onPressed: () {
                Provider.of<GameData>(context, listen: false).addGame(Game(
                    title: "タイトル",
                    member1: member1,
                    member2: member2,
                    member3: member3,
                    member4: member4,
                    memberScore1: 25000,
                    memberScore2: 25000,
                    memberScore3: 25000,
                    memberScore4: 25000));
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
