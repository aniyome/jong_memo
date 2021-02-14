import 'package:flutter/material.dart';
import 'package:jong_memo/screens/game_screen.dart';
import 'package:provider/provider.dart';

import 'models/game_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameData>(
      create: (_) => GameData(),
      child: MaterialApp(
        home: GameScreen(),
      ),
    );
  }
}
