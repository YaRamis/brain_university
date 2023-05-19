import 'package:brain_university/resources/brain_university_icons.dart';
import 'package:brain_university/widgets/common_widgets/app_card_info_box_widgets.dart';
import 'package:brain_university/widgets/common_widgets/app_container_widgets.dart';
import 'package:flutter/material.dart';

import '../../../theme/app_box_shadows.dart';
import '../../../theme/app_colors.dart';

part 'market_screen_card_text_widgets.dart';
part 'market_screen_card_price_widget.dart';

class MainMenuMarketScreenCardWidget extends StatelessWidget {
  const MainMenuMarketScreenCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardContainerWidget(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                color: const Color(0xFFE2E8FF),
                height: 171,
                width: double.infinity,
              ),
              const Positioned.fill(
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 32, bottom: 16),
                    child: _PriceWidget(price: '12 990'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(24.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _CategoryTextWidget(
                  text: 'Bazar',
                ),
                const SizedBox(height: 6),
                const _NameTextWidget(
                  text: 'Wildberries',
                ),
                const SizedBox(height: 8),
                const _DescriptionTextWidget(
                  text:
                      'Поможет разобраться в принципах успешной работы на маркетплейсах: что продавать, как находить клиетов, чем выделиться на фоне конкурентов, как начать делегировать задачи и др.',
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    AppCardRatingInfoBoxWidget(text: '4,0'),
                    SizedBox(width: 12),
                    AppCardUsersInfoBoxWidget(text: '164'),
                    SizedBox(width: 12),
                    AppCardArticlesInfoBoxWidget(text: '59 статей'),
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
