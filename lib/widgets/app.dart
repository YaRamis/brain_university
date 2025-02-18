import 'package:brain_university/app_routes/app_routes.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../theme/app_bar_themes.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain University',
      theme: ThemeData(
        fontFamily: 'PTRootUI',
        appBarTheme: AppBarThemes.defaultAppBarTheme,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
      ),
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.greetScreen,
    );
  }
}
