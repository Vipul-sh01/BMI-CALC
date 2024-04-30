import 'package:flutter/material.dart';
import 'package:theme/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onTap, required this.BottomTitle});


  final VoidCallback onTap;
  final String BottomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            BottomTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kActiveCardColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
