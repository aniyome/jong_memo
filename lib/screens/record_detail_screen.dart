import 'package:flutter/material.dart';
import 'package:jong_memo/widgets/member_text_field.dart';
import 'package:jong_memo/widgets/minus_tile.dart';
import 'package:jong_memo/widgets/one_line_record.dart';
import 'package:jong_memo/widgets/plus_tile.dart';
import 'package:jong_memo/widgets/point_text_form_field.dart';
import 'package:jong_memo/widgets/total_line_record.dart';

class RecordDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("記録表"),
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "2021年2月14日",
                          style: TextStyle(fontSize: 20),
                        ),
                        Text(
                          "No1",
                          style: TextStyle(fontSize: 20),
                        ),
                      ]),
                ),
                Divider(
                  height: 20,
                  thickness: 2,
                  color: Colors.black38,
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(""),
                      ),
                      MemberTextField(
                        labelText: "名前1",
                      ),
                      MemberTextField(
                        labelText: "名前2",
                      ),
                      MemberTextField(
                        labelText: "名前3",
                      ),
                      MemberTextField(
                        labelText: "名前4",
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(""),
                      ),
                      PlusTile(),
                      MinusTile(),
                      PlusTile(),
                      MinusTile(),
                      PlusTile(),
                      MinusTile(),
                      PlusTile(),
                      MinusTile(),
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                  color: Colors.black38,
                ),
                Container(
                  child: OneLineRecord(
                    lineNumber: 1,
                  ),
                ),
                Container(
                  child: OneLineRecord(
                    lineNumber: 2,
                  ),
                ),
                Container(
                  child: OneLineRecord(
                    lineNumber: 3,
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text('＋'),
                      shape: CircleBorder(),
                    ),
                  ),
                ),
                TotalLineRecord(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
