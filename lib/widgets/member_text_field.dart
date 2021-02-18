import 'package:flutter/material.dart';

class MemberTextField extends StatelessWidget {
  final String labelText;

  MemberTextField({this.labelText});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          decoration: InputDecoration(labelText: this.labelText),
        ),
      ),
    );
  }
}
