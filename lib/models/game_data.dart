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
        memberScore1: 20,
        memberScore2: 30,
        memberScore3: -20,
        memberScore4: -30),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 40,
        memberScore2: 10,
        memberScore3: -20,
        memberScore4: -30),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 40,
        memberScore2: 10,
        memberScore3: -20,
        memberScore4: -30),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 40,
        memberScore2: 10,
        memberScore3: -20,
        memberScore4: -30),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 40,
        memberScore2: 10,
        memberScore3: -20,
        memberScore4: -30),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 40,
        memberScore2: 10,
        memberScore3: -20,
        memberScore4: -30),
    Game(
        title: "Game2",
        member1: "test1",
        member2: "test2",
        member3: "test3",
        member4: "test4",
        memberScore1: 40,
        memberScore2: 10,
        memberScore3: -20,
        memberScore4: -30),
  ];

  // TODO 対局者1
  String member1 = "参加者1";

  // TODO 対局者2
  String member2 = "参加者2";

  // TODO 対局者3
  String member3 = "参加者3";

  // TODO 対局者4
  String member4 = "参加者4";

  // TODO 対局登録日時
  final DateTime created = DateTime.now();

  // TODO 対局更新日時
  DateTime updated = DateTime.now();

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

  void editGame(int index, Game game) {
    _games[index] = game;
    notifyListeners();
  }

  void deleteTask(int index) {
    _games.removeAt(index);
    notifyListeners();
  }
}
