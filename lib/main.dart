import 'package:flutter/material.dart';
import 'package:jong_memo/screens/record_list_screen.dart';
import 'package:provider/provider.dart';
import 'models/game_data.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GameData>(
      create: (_) => GameData(),
      child: MaterialApp(
        title: 'じゃんメモ',
        theme: ThemeData(primaryColor: Colors.teal),
        home: SafeArea(child: RecordListScreen()),
      ),
    );
  }
}
