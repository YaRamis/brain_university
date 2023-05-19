import 'package:flutter/material.dart';

import '../../resources/brain_university_icons.dart';
import '../../theme/app_colors.dart';
import '../common_widgets/app_text_field_widgets.dart';

class FriendListScreenWidget extends StatelessWidget {
  const FriendListScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Друзья'),
          leading: IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: const Icon(
              BrainUniversityIcons.back,
              color: AppColors.textColor,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: Stack(
          children: [
            SafeArea(
              child: ListView.builder(
                padding: const EdgeInsets.only(top: 86, left: 16, right: 16),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: const [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Color(0xFFE2E8FF),
                        ),
                        SizedBox(width: 16),
                        Text(
                          'Фамилия Имя',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            color: AppColors.textColor,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 14),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFFCFCFC), Color(0x00FCFCFC)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.6, 1],
                    ),
                  ),
                  child: const Expanded(
                    child: AppSearchBarTextFieldWidget(),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
