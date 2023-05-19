import 'package:flutter/material.dart';

import '../../resources/brain_university_icons.dart';
import '../../theme/app_box_shadows.dart';
import '../../theme/app_colors.dart';

class AppSearchBarTextFieldWidget extends StatelessWidget {
  const AppSearchBarTextFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
            contentPadding: const EdgeInsets.only(top: 32, left: 20),
            suffixIcon: MaterialButton(
              height: 48,
              minWidth: 48,
              shape: const CircleBorder(),
              color: Colors.transparent,
              elevation: 0,
              highlightElevation: 0,
              highlightColor: Colors.transparent,
              onPressed: () => {},
              child: const Icon(
                BrainUniversityIcons.voice_search,
                size: 20,
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
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(24),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.textColor),
              borderRadius: BorderRadius.circular(24),
            ),
          ),
        ),
      ),
    );
  }
}

class AppUserInfoEditTextFieldWidget extends StatelessWidget {
  final int maxLines;
  final String text;
  const AppUserInfoEditTextFieldWidget(
      {Key? key, required this.text, this.maxLines = 1})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: AppColors.textColor,
      ),
      maxLines: maxLines,
      minLines: 1,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        hintText: text,
        hintStyle: const TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          color: AppColors.secondaryTextColor,
        ),
        fillColor: Colors.transparent,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.secondaryTextColor),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.textColor),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
