import 'package:brain_university/resources/social_media_icons.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:brain_university/widgets/profile_screens/another_user_profile_screen_widget.dart';
import 'package:flutter/material.dart';

import '../../resources/brain_university_icons.dart';
import '../common_widgets/user_interest_box_widget.dart';
import '../friend_list_screen/friend_list_screen_widget.dart';
import 'my_profile_edit_screen_widget.dart';

class MyProfileScreenWidget extends StatelessWidget {
  const MyProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: AppBar(
          title: const Text('Профиль'),
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
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MyProfileEditScreenWidget(),
                    ),
                  );
                },
                child: const Padding(
                  padding: EdgeInsets.only(right: 18),
                  child: Text(
                    'Редактировать',
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
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 5),
                const CircleAvatar(
                  radius: 36,
                  backgroundColor: Color(0xFFE2E8FF),
                ),
                const SizedBox(width: 24),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Николай Романов',
                      style: TextStyle(
                        fontSize: 21,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: const [
                        Text(
                          '3 месяца',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                            color: AppColors.mainColor,
                          ),
                        ),
                        SizedBox(width: 2),
                        Text(
                          'с Brain University',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: AppColors.secondaryTextColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                const Text(
                  'Друзья',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: AppColors.mainColor,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FriendListScreenWidget(),
                      ),
                    );
                  },
                  child: const Text(
                    'Все',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: AppColors.secondaryTextColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 95,
              child: ListView.separated(
                itemCount: (MediaQuery.of(context).size.width / 72).floor(),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const AnotherProfileScreenWidget(),
                          ),
                        );
                      },
                      child: const CircleAvatar(
                        radius: 28,
                        backgroundColor: Color(0xFFE2E8FF),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 56,
                      child: Text(
                        'Кристина Узлова',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w400,
                          color: AppColors.textColor,
                        ),
                      ),
                    ),
                  ],
                ),
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 16),
              ),
            ),
            const SizedBox(height: 48),
            const Text(
              'Обо мне',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: AppColors.mainColor,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu turpis molestie, dictum est a, mattis tellus. Sed dignissim, metus nec fringilla accumsan, risus sem sollicitudin lacus, ut interdum tellus elit sed risus. Maecenas eget condimentum velit, sit amet feugiat lectus.',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.textColor,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 48),
            const Text(
              'Данные пользователя',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: AppColors.mainColor,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '+7 999 001-23-45',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Телефон',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.secondaryTextColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              '@romanov',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Никнейм',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.secondaryTextColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'romanov@gmail.com',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'E-mail',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.secondaryTextColor,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Москва',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: AppColors.textColor,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              'Город',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: AppColors.secondaryTextColor,
              ),
            ),
            const SizedBox(height: 48),
            const Text(
              'Соц. сети',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: AppColors.mainColor,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: const [
                Icon(
                  SocialMedia.telegram,
                  color: Color(0xFF2AABEE),
                  size: 28,
                ),
                SizedBox(width: 12),
                Text(
                  'romanov20',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Icon(
                  SocialMedia.vkontakte,
                  color: Color(0xFF246BFD),
                  size: 28,
                ),
                SizedBox(width: 12),
                Text(
                  'nikolay_romanov',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: AppColors.textColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 48),
            const Text(
              'Интересы',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 15,
                color: AppColors.mainColor,
              ),
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
            const SizedBox(height: 64),
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Выйти',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Color(0xFFF53939),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
