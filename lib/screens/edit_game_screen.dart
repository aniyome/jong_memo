import 'package:flutter/material.dart';
import 'package:jong_memo/models/game.dart';
import 'package:jong_memo/models/game_data.dart';
import 'package:provider/provider.dart';

class EditGameScreen extends StatefulWidget {
  final int index;

  const EditGameScreen({Key key, this.index}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _EditGameScreenState();
}

class _EditGameScreenState extends State<EditGameScreen> {
  Game game;

  @override
  Widget build(BuildContext context) {
    game = Provider.of<GameData>(context).games[widget.index];
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
              '対局編集',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black45,
              ),
            ),
            Row(children: [
              Text("タイトル"),
              Expanded(
                child: TextFormField(
                  initialValue:
                      Provider.of<GameData>(context).games[widget.index].title,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.title = newText;
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー1"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .member1,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.member1 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .memberScore1
                      .toString(),
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.memberScore1 = int.parse(newText);
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー2"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .member2,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.member2 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .memberScore2
                      .toString(),
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.memberScore2 = int.parse(newText);
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー3"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .member3,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.member3 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .memberScore3
                      .toString(),
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.memberScore3 = int.parse(newText);
                  },
                ),
              ),
            ]),
            Row(children: [
              Text("メンバー4"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .member4,
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.member4 = newText;
                  },
                ),
              ),
              Text("点数"),
              Expanded(
                child: TextFormField(
                  initialValue: Provider.of<GameData>(context)
                      .games[widget.index]
                      .memberScore4
                      .toString(),
                  autofocus: true,
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  onChanged: (newText) {
                    game.memberScore4 = int.parse(newText);
                  },
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text(
                  '登録',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.green,
                onPressed: () {
                  print(game);
                  Provider.of<GameData>(context, listen: false)
                      .editGame(widget.index, game);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
