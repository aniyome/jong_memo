import 'package:flutter/material.dart';

class PointTextFormField extends StatelessWidget {
  final int flex;

  PointTextFormField({this.flex});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: this.flex,
      child: Center(
        child: TextFormField(
          autofocus: true,
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
        ),
      ),
    );
  }
}
