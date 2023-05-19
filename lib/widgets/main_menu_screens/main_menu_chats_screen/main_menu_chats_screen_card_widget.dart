import 'package:brain_university/widgets/common_widgets/app_container_widgets.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_box_shadows.dart';
import '../../../theme/app_colors.dart';

part 'chats_screen_card_text_widgets.dart';
// part 'programs_screen_card_info_box_widgets.dart';

class MainMenuChatsScreenCardWidget extends StatelessWidget {
  const MainMenuChatsScreenCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainerWidget(
      borderRadius: 20,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 24,
              backgroundColor: Color(0xFFE2E8FF),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    _NameTextWidget(
                      text: 'Стив Джобс',
                    ),
                    SizedBox(height: 4),
                    _MessageTextWidget(
                      text:
                          'Моя работа — не облегчить жить людям. Моя работа — сделать их лучше',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 20,
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(horizontal: 6),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                '2',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}
