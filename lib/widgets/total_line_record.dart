import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TotalLineRecord extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Center(
              child: Text("小計"),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                "30",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                "20",
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                "-20",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                "-30",
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
