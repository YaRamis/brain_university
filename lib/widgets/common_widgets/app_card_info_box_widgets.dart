import 'package:flutter/material.dart';

import '../../theme/app_colors.dart';
import '../../resources/brain_university_icons.dart';

class AppCardInfoBoxWidget extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const AppCardInfoBoxWidget(
      {Key? key, required this.child, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 12, left: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}

class AppCardArticlesInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardArticlesInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(68, 68, 68, 0.05),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.doc,
            size: 16,
            color: Color.fromRGBO(68, 68, 68, 1),
          ),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardUsersInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardUsersInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.users,
            size: 16,
            color: Color.fromRGBO(65, 104, 245, 1),
          ),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardRatingInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardRatingInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(255, 199, 0, 0.2),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.star,
            size: 16,
            color: Color.fromRGBO(255, 199, 0, 1),
          ),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardViewsInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardViewsInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(68, 68, 68, 0.05),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.eye,
            size: 13,
            color: Color.fromRGBO(68, 68, 68, 1),
          ),
          const SizedBox(width: 11),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardTimeInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardTimeInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.clock,
            size: 13,
            color: Color.fromRGBO(65, 104, 245, 1),
          ),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardDownloadInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardDownloadInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.download,
            size: 17,
            color: Color.fromRGBO(65, 104, 245, 1),
          ),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardSavesInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardSavesInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            BrainUniversityIcons.bookmark,
            size: 16,
            color: Color.fromRGBO(65, 104, 245, 1),
          ),
          const SizedBox(width: 7),
          Text(
            text,
            style: const TextStyle(
              color: AppColors.textColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}

class AppCardUpdatesInfoBoxWidget extends StatelessWidget {
  final String text;

  const AppCardUpdatesInfoBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(29, 209, 0, 0.1),
      child: Row(
        children: [
          Text(
            text,
            style: const TextStyle(
              color: Color(0xFF1DD100),
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
