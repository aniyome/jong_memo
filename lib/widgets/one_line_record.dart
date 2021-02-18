import 'package:flutter/cupertino.dart';
import 'package:jong_memo/widgets/point_text_form_field.dart';

class OneLineRecord extends StatelessWidget {
  final int lineNumber;

  OneLineRecord({this.lineNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Text(this.lineNumber.toString()),
          ),
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
        PointTextFormField(
          flex: 3,
        ),
      ],
    );
  }
}
