import 'package:flutter/material.dart';
import 'package:jong_memo/models/game_data.dart';
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
                          child: Expanded(
                            child: RaisedButton(
                              child: const Text('編集'),
                              color: Colors.orange,
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child: RaisedButton(
                              child: const Text('削除'),
                              color: Colors.redAccent,
                              textColor: Colors.white,
                              onPressed: () {},
                            ),
                          ),
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
