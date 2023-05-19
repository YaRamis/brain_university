import 'package:flutter/material.dart';

import '../../resources/brain_university_icons.dart';
import '../../theme/app_colors.dart';
import '../common_widgets/app_text_field_widgets.dart';
import '../common_widgets/user_interest_box_widget.dart';
import 'another_user_profile_screen_widget.dart';

class MyProfileEditScreenWidget extends StatelessWidget {
  const MyProfileEditScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(52),
          child: AppBar(
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
            actions: [
              Align(
                alignment: Alignment.center,
                child: GestureDetector(
                  onTap: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(right: 18),
                    child: Text(
                      'Сохранить',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 64),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundColor: Color(0xFFE2E8FF),
                    child: CircleAvatar(
                      backgroundColor: Color.fromRGBO(18, 18, 18, 0.3),
                      radius: 36,
                      child: Padding(
                        padding: EdgeInsets.only(right: 3, bottom: 3),
                        child: Icon(
                          BrainUniversityIcons.camera,
                          color: Colors.white,
                          size: 26,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 34),
                const Text(
                  'Имя',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: 'Николай'),
                const SizedBox(height: 32),
                const Text(
                  'Фамилия',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: 'Романов'),
                const SizedBox(height: 32),
                const Text(
                  'Обо мне',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(
                    maxLines: 8,
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec'),
                const SizedBox(height: 32),
                const Text(
                  'Телефон',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: '+7 999 001-23-45'),
                const SizedBox(height: 32),
                const Text(
                  'Никнейм',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: '@romanov'),
                const SizedBox(height: 32),
                const Text(
                  'E-mail',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: 'romanov@gmail.com'),
                const SizedBox(height: 32),
                const Text(
                  'Город',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: 'Москва'),
                const SizedBox(height: 32),
                const Text(
                  'Telegram',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(text: 't.me/romanov20'),
                const SizedBox(height: 32),
                const Text(
                  'Вконтакте',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: AppColors.secondaryTextColor,
                  ),
                ),
                const SizedBox(height: 12),
                const AppUserInfoEditTextFieldWidget(
                    text: 'vk.com/nikolay_ romanov'),
                const SizedBox(height: 32),
                Row(
                  children: [
                    const Text(
                      'Интересы',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: AppColors.secondaryTextColor,
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'Изменить',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: AppColors.mainColor,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Wrap(
                  runSpacing: 8,
                  spacing: 8,
                  children: const [
                    UserInterestBoxWidget(text: 'Менеджмент'),
                    UserInterestBoxWidget(text: 'Предпринимательство'),
                    UserInterestBoxWidget(text: 'Программирование'),
                    UserInterestBoxWidget(text: 'Маркетинг'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
