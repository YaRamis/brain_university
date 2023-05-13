import 'package:flutter/material.dart';

import '../../app_routes/app_routes.dart';

class PageViewFinishWidget extends StatelessWidget {
  const PageViewFinishWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          const SizedBox(height: 50),
          const Icon(
            Icons.ac_unit_rounded,
            size: 200,
            color: Colors.blue,
          ),
          const SizedBox(height: 100),
          const Text(
            'Добро пожаловать!',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(AppRoutes.mainMenuScreen);
              },
              child: const Text(
                'Начать',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
