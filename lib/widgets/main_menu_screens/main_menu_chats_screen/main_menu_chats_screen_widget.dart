import 'package:flutter/material.dart';

import '../../common_widgets/app_text_field_widgets.dart';
import 'main_menu_chats_screen_card_widget.dart';

class MainMenuChatsScreenWidget extends StatelessWidget {
  const MainMenuChatsScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 87),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: MainMenuChatsScreenCardWidget(),
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
              child: const AppSearchBarTextFieldWidget(),
            ),
          ],
        )
      ],
    );
  }
}
