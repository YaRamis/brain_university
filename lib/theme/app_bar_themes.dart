import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppBarThemes {
  static const defaultAppBarTheme = AppBarTheme(
    titleTextStyle: TextStyle(
      color: AppColors.textColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    titleSpacing: 0,
    elevation: 0,
    toolbarHeight: 52,
    shadowColor: Colors.transparent,
    backgroundColor: Colors.transparent,
  );
}
