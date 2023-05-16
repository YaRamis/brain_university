import 'package:flutter/material.dart';

import '../../theme/app_box_shadows.dart';
import '../../theme/app_colors.dart';
import '../../theme/brain_university_icons_icons.dart';

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
              color: Colors.white,
              elevation: 0,
              highlightElevation: 0,
              highlightColor: Colors.transparent,
              onPressed: () => {},
              child: const Icon(
                BrainUniversityIcons.voiceSearch,
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
            BrainUniversityIcons.searchFilter,
            size: 20,
            color: AppColors.secondaryColor,
          ),
        ),
      ),
    );
  }
}
