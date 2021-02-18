import 'package:flutter/material.dart';
import 'package:jong_memo/models/game_data.dart';
import 'package:jong_memo/screens/record_detail_screen.dart';
import 'package:provider/provider.dart';

class RecordListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('対局一覧'),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Icon(Icons.add),
          onPressed: () async {
            await Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return RecordDetailScreen();
                },
              ),
            );
          },
        ),
        body: Container(
          child: Consumer<GameData>(
            builder: (context, gameData, child) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  print(index);
                  final game = gameData.games[index];
                  return Container(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    height: 220,
                    width: double.maxFinite,
                    child: Card(
                        elevation: 4.0,
                        margin: EdgeInsets.all(10),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text("2月15日 20時13分"),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("参加者1"),
                                    Text("参加者2"),
                                    Text("参加者3"),
                                    Text("参加者4"),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "+40",
                                      style: TextStyle(color: Colors.lightBlue),
                                    ),
                                    Text(
                                      "+10",
                                      style: TextStyle(color: Colors.lightBlue),
                                    ),
                                    Text(
                                      "-10",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                    Text(
                                      "-40",
                                      style: TextStyle(color: Colors.red),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    RaisedButton(
                                      child: const Text('編集'),
                                      color: Colors.orange,
                                      textColor: Colors.white,
                                      onPressed: () async {
                                        await Navigator.of(context).push(
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return RecordDetailScreen();
                                            },
                                          ),
                                        );
                                      },
                                    ),
                                    RaisedButton(
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
                                                      gameData
                                                          .deleteTask(index);
                                                      Navigator.pop(context);
                                                    }),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                },
                itemCount: gameData.gameCount,
              );
            },
          ),
        ));
  }
}
