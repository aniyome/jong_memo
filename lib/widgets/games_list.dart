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
            return Container(
              child: Column(
                children: [
                  Text("${game.title}"),
                  Text("${game.member1}: ${game.memberScore1}"),
                  Text("${game.member2}: ${game.memberScore2}"),
                  Text("${game.member3}: ${game.memberScore3}"),
                  Text("${game.member4}: ${game.memberScore4}")
                ],
              ),
            );
          },
          itemCount: gameData.gameCount,
        );
      },
    );
  }
}
