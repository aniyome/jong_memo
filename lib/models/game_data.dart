import 'package:flutter/foundation.dart';
import 'package:jong_memo/models/game.dart';
import 'dart:collection';

class GameData extends ChangeNotifier {
  List<Game> _games = [
    Game(
        title: "Game1",
        member1: "member1",
        member2: "member2",
        member3: "member3",
        member4: "member4",
        memberScore1: 27000,
        memberScore2: 26000,
        memberScore3: 24000,
        memberScore4: 23000),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 28000,
        memberScore2: 27000,
        memberScore3: 23000,
        memberScore4: 22000),
  ];

  List<Game> get games {
    return _games;
  }

  int get gameCount {
    return _games.length;
  }

  void addGame(Game game) {
    _games.add(game);
    notifyListeners();
  }

  void deleteTask(int index) {
    _games.removeAt(index);
    notifyListeners();
  }
}
