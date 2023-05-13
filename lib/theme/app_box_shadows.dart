import 'package:flutter/material.dart';

abstract class AppBoxShadows {
  static const greyBoxShadow = BoxShadow(
    offset: Offset(0, 10),
    color: Color.fromRGBO(0, 0, 0, 0.05),
    blurRadius: 50,
    spreadRadius: 0,
  );

  static const blueBoxShadow = BoxShadow(
    offset: Offset(0, 4),
    color: Color.fromRGBO(33, 76, 234, 0.2),
    blurRadius: 10,
    spreadRadius: 0,
  );
}
