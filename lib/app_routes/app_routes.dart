import 'package:brain_university/widgets/greet_screen/greet_screen_widget.dart';
import 'package:brain_university/widgets/main_menu_screens/main_menu_main_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_screens/my_profile_screen_widtget.dart';

/*
Route-ы экранов приложения.

Routes of app screens.
 */
abstract class AppRoutes {
  static String greetScreen = '/greet_screen';
  static String mainMenuScreen = '/main_menu_screen';
  static String myProfileScreen = '/main_menu_screen/my_profile_screen';

  static Map<String, WidgetBuilder> routes = {
    greetScreen: (context) => GreetScreenWidget(),
    mainMenuScreen: (context) => const MainMenuWidget(),
    myProfileScreen: (context) => const MyProfileScreenWidget(),
  };
}
