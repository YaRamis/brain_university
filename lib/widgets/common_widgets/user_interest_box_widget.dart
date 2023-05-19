import 'package:flutter/cupertino.dart';

import '../../theme/app_colors.dart';

class UserInterestBoxWidget extends StatelessWidget {
  final String text;

  const UserInterestBoxWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromRGBO(18, 18, 18, 0.03),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          top: 11,
          bottom: 13,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: AppColors.textColor,
          ),
        ),
      ),
    );
  }
}
