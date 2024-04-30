import 'package:flutter/material.dart';
import '../constants.dart';


class Iconcontent extends StatelessWidget {
  const Iconcontent({this.icon, required this.label});
  final IconData? icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFFFFFFFF),
          size: 80.0,
        ),
        const SizedBox(height: 15.0,
        ),
        Text(
          label,
          style: kLabelComtentStyle,
        ),
      ],
    );
  }
}