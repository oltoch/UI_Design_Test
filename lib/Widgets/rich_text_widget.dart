import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  const RichTextWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.fontSize,
    required this.text1Color,
    required this.text2Color,
  }) : super(key: key);
  final String text1, text2;
  final double fontSize;
  final Color text1Color, text2Color;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: TextStyle(
                fontSize: fontSize,
                color: text1Color,
                fontWeight: FontWeight.w500),
          ),
          TextSpan(
            text: text2,
            style: TextStyle(
                fontSize: fontSize,
                color: text2Color,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
