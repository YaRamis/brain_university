import 'package:flutter/material.dart';

import '../../common_widgets/app_buttons.dart';
import '../../common_widgets/app_text_field_widgets.dart';
import '../../program_details_screen/program_details_screen_widget.dart';
import 'main_menu_market_screen_card_widget.dart';

class MainMenuMarketScreenWidget extends StatelessWidget {
  const MainMenuMarketScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 71),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => ProgramDetailsScreenWidget(),
                          ),
                        );
                      },
                      child: MainMenuMarketScreenCardWidget(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4, right: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 32,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          decoration: BoxDecoration(
                              color: const Color(0xFFFA5E78),
                              borderRadius: BorderRadius.circular(16)),
                          child: const Text(
                            'Скидка 25%',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
