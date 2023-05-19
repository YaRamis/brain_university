import 'package:brain_university/resources/brain_university_icons.dart';
import 'package:brain_university/widgets/common_widgets/app_card_info_box_widgets.dart';
import 'package:brain_university/widgets/common_widgets/app_container_widgets.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_box_shadows.dart';
import '../../../theme/app_colors.dart';

part 'programs_screen_card_text_widgets.dart';

class MainMenuProgramsScreenCardWidget extends StatelessWidget {
  const MainMenuProgramsScreenCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainerWidget(
      child: Column(
        children: [
          Container(
            color: const Color(0xFFE2E8FF),
            height: 171,
            width: double.infinity,
          ),
          Container(
            padding: const EdgeInsets.all(24.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _CategoryTextWidget(
                  text: 'Digital',
                ),
                const SizedBox(height: 6),
                const _NameTextWidget(
                  text: 'Маркетинг',
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    AppCardUpdatesInfoBoxWidget(text: '+2'),
                    SizedBox(width: 12),
                    AppCardArticlesInfoBoxWidget(text: '59 статей'),
                    SizedBox(width: 12),
                    AppCardSavesInfoBoxWidget(text: '18'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
