import 'package:flutter/material.dart';
import 'package:jong_memo/models/game_data.dart';
import 'package:jong_memo/screens/edit_game_screen.dart';
import 'package:provider/provider.dart';

class GamesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<GameData>(
      builder: (context, gameData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final game = gameData.games[index];
            return Card(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("${game.title}"),
                    const SizedBox(height: 12),
                    Text("${game.member1}: ${game.memberScore1}"),
                    Text("${game.member2}: ${game.memberScore2}"),
                    Text("${game.member3}: ${game.memberScore3}"),
                    Text("${game.member4}: ${game.memberScore4}"),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                            child: const Text('編集'),
                            color: Colors.orange,
                            textColor: Colors.white,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  builder: (context) => SingleChildScrollView(
                                          child: Container(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom),
                                        child: EditGameScreen(index: index),
                                      )));
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              child: const Text('削除'),
                              color: Colors.redAccent,
                              textColor: Colors.white,
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        title: Text("確認"),
                                        content: Text("対局データを削除しますか？"),
                                        actions: <Widget>[
                                          FlatButton(
                                            child: Text("CANCEL"),
                                            onPressed: () =>
                                                Navigator.pop(context),
                                          ),
                                          FlatButton(
                                              child: Text("OK"),
                                              onPressed: () {
                                                gameData.deleteTask(index);
                                                print(gameData);
                                                Navigator.pop(context);
                                              }),
                                        ],
                                      );
                                    });
                              }),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: gameData.gameCount,
        );
      },
    );
  }
}
