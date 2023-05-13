import 'package:brain_university/theme/app_box_shadows.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

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
                children: [
                  Expanded(
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
                            contentPadding:
                                const EdgeInsets.only(top: 32, left: 20),
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
                              borderSide:
                                  const BorderSide(color: Colors.transparent),
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
                  const SizedBox(width: 10),
                  DecoratedBox(
                    decoration: const BoxDecoration(
                      boxShadow: [AppBoxShadows.greyBoxShadow],
                      shape: BoxShape.circle,
                    ),
                    // child: CircleAvatar(
                    //   radius: 24,
                    //   backgroundColor: Colors.white,
                    //   foregroundColor: AppColors.secondaryColor,
                    //   child: IconButton(
                    //     onPressed: () {},
                    //     icon: const Icon(
                    //       Icons.filter_list_rounded,
                    //       size: 30,
                    //     ),
                    //   ),
                    // ),
                    child: MaterialButton(
                      height: 48,
                      minWidth: 48,
                      shape: const CircleBorder(),
                      color: Colors.white,
                      elevation: 0,
                      highlightElevation: 0,
                      highlightColor: Colors.transparent,
                      onPressed: () => {},
                      child: const Icon(
                        Icons.filter_list_rounded,
                        size: 30,
                        color: AppColors.secondaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
