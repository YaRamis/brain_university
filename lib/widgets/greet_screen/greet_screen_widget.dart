import 'package:brain_university/app_routes/app_routes.dart';
import 'package:brain_university/widgets/greet_screen/greet_page_view_finish_widget.dart';
import 'package:brain_university/widgets/greet_screen/greet_page_view_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class GreetScreenWidget extends StatelessWidget {
  GreetScreenWidget({Key? key}) : super(key: key);

  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 15),
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed(AppRoutes.mainMenuScreen);
                  },
                  child: const Text(
                    'Пропустить',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            const Spacer(),
            SizedBox(
              height: 600,
              width: double.infinity,
              child: PageView(
                controller: pageController,
                children: const [
                  PageViewPageWidget(),
                  PageViewPageWidget(),
                  PageViewPageWidget(),
                  PageViewPageWidget(),
                  PageViewFinishWidget(),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: 5,
              effect: const WormEffect(dotHeight: 8, dotWidth: 8, spacing: 16),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
