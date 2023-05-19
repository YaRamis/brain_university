import 'package:animations/animations.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:brain_university/resources/brain_university_icons.dart';
import 'package:brain_university/widgets/main_menu_screens/main_menu_market_screen/main_menu_market_screen_widget.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../app_routes/app_routes.dart';
import 'main_menu_bookmarks_screen/main_menu_bookmarks_screen_widget.dart';
import 'main_menu_chats_screen/main_menu_chats_screen_widget.dart';
import 'main_menu_programs_screen/main_menu_programs_screen_widget.dart';

class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({Key? key}) : super(key: key);

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  final _mainScreens = [
    {
      'widget': const MainMenuMarketScreenWidget(),
      'title': 'Brain University',
    },
    {
      'widget': const MainMenuProgramsScreenWidget(),
      'title': 'Мои программы',
    },
    {
      'widget': const MainMenuChatsScreenWidget(),
      'title': 'Чаты',
    },
    {
      'widget': const MainMenuBookmarksScreenWidget(),
      'title': 'Сохраненное',
    },
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Material(
        child: SafeArea(
          child: Scaffold(
            body: PageTransitionSwitcher(
                transitionBuilder: (
                  Widget child,
                  Animation<double> primaryAnimation,
                  Animation<double> secondaryAnimation,
                ) =>
                    FadeThroughTransition(
                      animation: primaryAnimation,
                      secondaryAnimation: secondaryAnimation,
                      child: child,
                    ),
                child: _mainScreens[_currentIndex]['widget'] as Widget?),
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(52),
              child: AppBar(
                title: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Text(
                    _mainScreens[_currentIndex]['title'] as String,
                  ),
                ),
                leadingWidth: 52,
                leading: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.myProfileScreen);
                    },
                    child: const CircleAvatar(
                      radius: 16,
                      backgroundColor: Color(0xFFE2E8FF),
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: IconButton(
                      onPressed: () {},
                      icon: Stack(
                        children: const [
                          Icon(
                            BrainUniversityIcons.notification,
                            color: AppColors.textColor,
                            size: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Material(
                                color: Colors.transparent,
                                shape: CircleBorder(
                                  side:
                                      BorderSide(color: Colors.white, width: 1),
                                ),
                                child: Icon(
                                  Icons.circle,
                                  size: 10,
                                  color: Colors.redAccent,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 64,
              child: CustomNavigationBar(
                backgroundColor: Colors.white,
                selectedColor: AppColors.mainColor,
                unSelectedColor: AppColors.secondaryColor,
                iconSize: 30,
                elevation: 0,
                currentIndex: _currentIndex,
                onTap: (index) {
                  _currentIndex = index;
                  setState(() {});
                },
                items: [
                  CustomNavigationBarItem(
                    icon: const Icon(
                      BrainUniversityIcons.market,
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: const Icon(
                      BrainUniversityIcons.programs,
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: Stack(
                      children: const [
                        Icon(
                          BrainUniversityIcons.chat,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Material(
                            color: Colors.transparent,
                            shape: CircleBorder(
                              side: BorderSide(color: Colors.white, width: 1),
                            ),
                            child: Icon(
                              Icons.circle,
                              size: 10,
                              color: Colors.redAccent,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: const Icon(
                      BrainUniversityIcons.bookmark,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
