import 'package:flutter/material.dart';

class RoundIconButtom extends StatefulWidget {
  const RoundIconButtom({this.icon, required this.onPressed});

  final IconData? icon;
  final VoidCallback onPressed;

  @override
  State<RoundIconButtom> createState() => _RoundIconButtomState();
}
class _RoundIconButtomState extends State<RoundIconButtom> {
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(widget.icon),
      onPressed: widget.onPressed,
      elevation: 6.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape:const CircleBorder(),
      fillColor:const Color(0xFF4C4F5E),
    );
  }
}