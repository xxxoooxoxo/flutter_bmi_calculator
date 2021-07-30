import 'package:flutter/material.dart';
import '../constants.dart';


class RoundIconButton extends StatelessWidget {
  RoundIconButton(this.icon, this.onPress);

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPress,
      elevation: 6,
      constraints: BoxConstraints.tightFor(
        width: 50,
        height: 50,
      ),
      shape: CircleBorder(),
      fillColor: kUnselectedTextColor,
    );
  }
}
