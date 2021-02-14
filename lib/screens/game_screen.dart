import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jong_memo/models/game_data.dart';
import 'package:jong_memo/screens/add_game_screen.dart';
import 'package:jong_memo/widgets/games_list.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          child: Icon(Icons.add),
          onPressed: () {
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                        child: Container(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddGameScreen(),
                    )));
          }),
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Jong Memo',
            style: TextStyle(
              color: Colors.black38,
              fontSize: 50.0,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            '${Provider.of<GameData>(context).gameCount} Games',
            style: TextStyle(
              color: Colors.green,
              fontSize: 18,
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
              ),
              child: GamesList(),
            ),
          ),
        ],
      ),
    );
  }
}
