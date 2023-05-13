import 'package:brain_university/theme/app_box_shadows.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:flutter/material.dart';

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
              child: SizedBox(
                height: 48,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    boxShadow: const [AppBoxShadows.greyBoxShadow],
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: TextField(
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.only(top: 32, left: 20),
                      suffixIcon: MaterialButton(
                        height: 48,
                        minWidth: 48,
                        shape: const CircleBorder(),
                        color: Colors.white,
                        elevation: 0,
                        highlightElevation: 0,
                        highlightColor: Colors.transparent,
                        onPressed: () => {},
                        child: const Icon(
                          Icons.mic_rounded,
                          size: 30,
                          color: AppColors.secondaryColor,
                        ),
                      ),
                      hintText: 'Поиск',
                      hintStyle: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondaryColor,
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: AppColors.textColor),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
