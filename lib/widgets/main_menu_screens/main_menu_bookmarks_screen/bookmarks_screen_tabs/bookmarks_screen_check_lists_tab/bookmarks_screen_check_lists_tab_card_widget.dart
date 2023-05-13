import 'package:brain_university/widgets/common_widgets/app_card_info_box_widget.dart';
import 'package:brain_university/widgets/common_widgets/app_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/app_colors.dart';

part 'bookmarks_screen_check_lists_tab_card_info_box_widgets.dart';
part 'bookmarks_screen_check_lists_tab_card_text_widgets.dart';

class BookmarksScreenCheckListsTabCardWidget extends StatelessWidget {
  const BookmarksScreenCheckListsTabCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppCardWidget(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(24.0),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const _DateTextWidget(
                  text: '28.06.2022',
                ),
                const SizedBox(height: 6),
                const _HeaderTextWidget(
                  text: 'Заголовок',
                ),
                const SizedBox(height: 8),
                const _BodyTextWidget(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent auctor purus luctus enim egestas, ac scelerisque ante pulvinar. Donec ut rhoncus ex. Suspendisse ac rhoncus nisl, eu tempor urna. Curabitur vel bibendum lorem. Morbi convallis convallis diam sit amet lacinia. Aliquam in elementum tellus.',
                ),
                const SizedBox(height: 24),
                Row(
                  children: const [
                    _CheckListsTabCardRatingInfoBoxWidget(text: '4,0'),
                    SizedBox(width: 12),
                    _CheckListsTabCardTimeInfoBoxWidget(text: '0 минут'),
                    SizedBox(width: 12),
                    _CheckListsTabCardViewsInfoBoxWidget(text: '0'),
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
