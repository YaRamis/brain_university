import 'package:flutter/material.dart';

import '../bookmarks_screen_articles_tab/bookmarks_screen_articles_tab_card_widget.dart';
import '../bookmarks_screen_check_lists_tab/bookmarks_screen_check_lists_tab_card_widget.dart';
import '../bookmarks_screen_guides_tabs/bookmarks_screen_guides_tab_card_widget.dart';

class BookmarksScreenMainTabWidget extends StatelessWidget {
  const BookmarksScreenMainTabWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 12),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    child: BookmarksScreenArticlesTabCardWidget(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    child: BookmarksScreenGuidesTabCardWidget(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                    child: BookmarksScreenCheckListsTabCardWidget(),
                  ),
                ],
              );
            },
          ),
        ),
        Container(
          height: 24,
          alignment: Alignment.topCenter,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFF8F8F8), Color(0x88F8F8F8), Color(0x00F8F8F8)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.2, 0.4, 0.7],
            ),
          ),
        )
      ],
    );
  }
}
