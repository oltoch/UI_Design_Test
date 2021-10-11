import 'package:flutter/material.dart';

class RoundNumberButton extends StatelessWidget {
  RoundNumberButton(
      {required this.number,
      required this.buttonColor,
      required this.numberColor});
  final Color numberColor, buttonColor;
  final String number;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () {},
      elevation: 3,
      constraints: BoxConstraints.tightFor(
        width: 40,
        height: 40,
      ),
      shape: CircleBorder(),
      fillColor: buttonColor,
      child: Text(
        number,
        style: TextStyle(
          fontSize: 16,
          color: numberColor,
        ),
      ),
    );
  }
}
