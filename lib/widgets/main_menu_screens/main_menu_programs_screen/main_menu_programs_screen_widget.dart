import 'package:brain_university/widgets/common_widgets/app_search_bar_widgets.dart';
import 'package:flutter/material.dart';

import 'main_menu_programs_screen_card_widget.dart';

class MainMenuProgramsScreenWidget extends StatelessWidget {
  const MainMenuProgramsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 71),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: MainMenuProgramsScreenCardWidget(),
              );
            },
          ),
        ),
        Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: const EdgeInsets.only(left: 16, right: 16, top: 66),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFCFCFC), Color(0x00FCFCFC)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.6, 1],
                ),
              ),
              child: Row(
                children: const [
                  Expanded(
                    child: AppSearchBarTextFieldWidget(),
                  ),
                  SizedBox(width: 10),
                  AppSearchBarFilterButtonWidget(),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
