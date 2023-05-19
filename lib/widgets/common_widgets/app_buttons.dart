import 'package:brain_university/theme/app_box_shadows.dart';
import 'package:brain_university/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../../resources/brain_university_icons.dart';

class AppDefaultButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;

  const AppDefaultButton(
      {Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [AppBoxShadows.blueBoxShadow],
        ),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 14,
              bottom: 16,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AppSearchBarFilterButtonWidget extends StatelessWidget {
  const AppSearchBarFilterButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        boxShadow: [AppBoxShadows.greyBoxShadow],
        shape: BoxShape.circle,
      ),
      child: MaterialButton(
        height: 48,
        minWidth: 48,
        shape: const CircleBorder(),
        color: Colors.white,
        elevation: 0,
        highlightElevation: 0,
        highlightColor: Colors.transparent,
        onPressed: () => {},
        child: const Padding(
          padding: EdgeInsets.only(right: 2),
          child: Icon(
            BrainUniversityIcons.search_filter,
            size: 20,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}
