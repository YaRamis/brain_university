import 'package:brain_university/app_routes/app_routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brain University',
      theme: ThemeData(fontFamily: 'PTRootUI'),
      routes: AppRoutes.routes,
      initialRoute: AppRoutes.greetScreen,
    );
  }
}
