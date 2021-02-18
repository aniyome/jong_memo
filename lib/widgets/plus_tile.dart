import 'package:flutter/material.dart';

class PlusTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Text(
            "+",
            style: TextStyle(color: Colors.blueAccent),
          ),
        ),
      ),
    );
  }
}
