import 'package:brain_university/widgets/common_widgets/app_card_info_box_widget.dart';
import 'package:brain_university/widgets/common_widgets/app_card_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../theme/app_colors.dart';

part 'bookmarks_screen_guides_tab_card_info_box_widgets.dart';
part 'bookmarks_screen_guides_tab_card_text_widgets.dart';

class BookmarksScreenGuidesTabCardWidget extends StatelessWidget {
  const BookmarksScreenGuidesTabCardWidget({
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
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.mainColor,
                      child: Icon(
                        Icons.sim_card_download_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        _NameTextWidget(
                          text: 'Название',
                        ),
                        SizedBox(height: 4),
                        _SizeTextWidget(
                          text: '0 MB',
                        ),
                      ],
                    ),
                    const Spacer(),
                    const _GuidesTabCardDownloadInfoBoxWidget(text: '0'),
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
