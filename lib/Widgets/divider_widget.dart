import 'package:flutter/material.dart';

class ShortDividerWidget extends StatelessWidget {
  final Color color;
  ShortDividerWidget({required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 100),
      child: Divider(
        thickness: 3,
        height: 1,
        color: color,
      ),
    );
  }
}

class LongDividerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Divider(
        //thickness: 1,
        height: 1,
        color: Color(0xff2b2b2b),
      ),
    );
  }
}
