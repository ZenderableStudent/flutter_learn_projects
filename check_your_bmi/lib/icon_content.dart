import 'package:flutter/material.dart';
import 'constans.dart';

class IconContent extends StatelessWidget {
  IconContent({@required this.sex, @required this.label});
  final String label;
  final IconData sex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          sex,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
