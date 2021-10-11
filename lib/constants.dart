import 'package:flutter/material.dart';

const kBigTextStyle = TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
  color: Color(0xff2b2b2b),
);

final kButtonDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(14.0),
  gradient: LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xffFB724C), Color(0xffFE904B)],
    stops: [0.3, 0.6],
  ),
);
