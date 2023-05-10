import 'package:brain_university/theme/app_colors.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'main_menu_market_screen/main_menu_market_screen_widget.dart';

class MainMenuWidget extends StatefulWidget {
  const MainMenuWidget({Key? key}) : super(key: key);

  @override
  State<MainMenuWidget> createState() => _MainMenuWidgetState();
}

class _MainMenuWidgetState extends State<MainMenuWidget> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Material(
        child: SafeArea(
          child: Scaffold(
            backgroundColor: const Color(0xFFFCFCFC),
            body: const MainMenuMarketScreenWidget(),
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(52),
              child: AppBar(
                toolbarHeight: 52,
                titleSpacing: 0,
                title: const Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: Text(
                    'Brain University',
                    style: TextStyle(
                      color: AppColors.textColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                shadowColor: Colors.transparent,
                backgroundColor: Colors.transparent,
                leadingWidth: 52,
                leading: const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Color(0xFFE2E8FF),
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
                            Icons.notifications_rounded,
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
                      Icons.shopping_cart_rounded,
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: const Icon(
                      Icons.apps_rounded,
                    ),
                  ),
                  CustomNavigationBarItem(
                    icon: Stack(
                      children: const [
                        Icon(
                          Icons.chat_rounded,
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
                      Icons.bookmark_rounded,
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
