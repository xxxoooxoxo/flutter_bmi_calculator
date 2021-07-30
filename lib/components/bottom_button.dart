
import 'package:flutter/material.dart';

import '../constants.dart';

class BottomBanner extends StatelessWidget {
  BottomBanner(this.text, this.onPressed);

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: Center(
          child: Text(text, style: kLargeButtonStyle),
        ),
        color: kBottomContainerColor,
        padding: EdgeInsets.only(bottom: 15),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 70,
      ),
    );
  }
}
