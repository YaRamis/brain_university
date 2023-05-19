import 'package:brain_university/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import '../../common_widgets/app_buttons.dart';
import '../../common_widgets/app_text_field_widgets.dart';
import 'bookmarks_screen_tabs/bookmarks_screen_articles_tab/bookmarks_screen_articles_tab_widget.dart';
import 'bookmarks_screen_tabs/bookmarks_screen_check_lists_tab/bookmarks_screen_check_lists_tab_widget.dart';
import 'bookmarks_screen_tabs/bookmarks_screen_guides_tabs/bookmarks_screen_guides_tab_widget.dart';
import 'bookmarks_screen_tabs/bookmarks_screen_main_tab/bookmarks_screen_main_tab_widget.dart';

class MainMenuBookmarksScreenWidget extends StatelessWidget {
  const MainMenuBookmarksScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DefaultTabController(
          length: 4,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 71, left: 8, right: 8),
              child: Column(
                children: [
                  TabBar(
                    labelPadding: const EdgeInsets.symmetric(horizontal: 12),
                    labelColor: Colors.black,
                    labelStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    unselectedLabelColor: AppColors.secondaryColor,
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    isScrollable: true,
                    tabs: const [
                      Tab(text: 'Всё'),
                      Tab(text: 'Статьи'),
                      Tab(text: 'Гайды'),
                      Tab(text: 'Чек-листы'),
                    ],
                    indicatorSize: TabBarIndicatorSize.label,
                    indicator: MaterialIndicator(
                      height: 3,
                      color: AppColors.mainColor,
                      bottomLeftRadius: 1.5,
                      bottomRightRadius: 1.5,
                      topLeftRadius: 1.5,
                      topRightRadius: 1.5,
                    ),
                  ),
                  const Expanded(
                    child: TabBarView(
                      children: [
                        BookmarksScreenMainTabWidget(),
                        BookmarksScreenArticlesTabWidget(),
                        BookmarksScreenGuidesTabWidget(),
                        BookmarksScreenCheckListsTabWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
