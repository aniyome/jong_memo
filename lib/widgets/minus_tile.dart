import 'package:flutter/material.dart';

class MinusTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "-",
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ),
    );
  }
}
