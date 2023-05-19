import 'package:brain_university/resources/social_media_icons.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:brain_university/widgets/common_widgets/app_buttons.dart';
import 'package:flutter/material.dart';

import '../../resources/brain_university_icons.dart';
import '../common_widgets/user_interest_box_widget.dart';
import '../friend_list_screen/friend_list_screen_widget.dart';

class AnotherProfileScreenWidget extends StatelessWidget {
  const AnotherProfileScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(52),
        child: AppBar(
          title: const Text('kristi'),
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
            IconButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: const Icon(
                BrainUniversityIcons.more,
                color: AppColors.textColor,
                size: 26,
              ),
              onPressed: () {},
            ),
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
                      'Кристина Узлова',
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
                          '2 недели',
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
            const SizedBox(height: 25),
            Row(
              children: [
                Flexible(
                  fit: FlexFit.tight,
                  child: AppDefaultButton(
                    text: 'Добавить в друзья',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Flexible(
                  fit: FlexFit.tight,
                  child: AppDefaultButton(
                    text: 'Сообщение',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
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
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Color(0xFFE2E8FF),
                    ),
                    Spacer(),
                    SizedBox(
                      width: 56,
                      child: Text(
                        'Вика Умбер',
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
              'uzlova@gmail.com',
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
                  'kris_smm',
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
                  'uzlovakris',
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
                UserInterestBoxWidget(text: 'Копирайтинг'),
                UserInterestBoxWidget(text: 'Менеджмент'),
                UserInterestBoxWidget(text: 'Управление командой'),
                UserInterestBoxWidget(text: 'SMM'),
              ],
            ),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
