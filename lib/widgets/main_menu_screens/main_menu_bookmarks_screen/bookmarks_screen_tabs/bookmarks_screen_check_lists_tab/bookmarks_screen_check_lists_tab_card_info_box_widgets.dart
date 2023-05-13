part of 'bookmarks_screen_check_lists_tab_card_widget.dart';

class _CheckListsTabCardViewsInfoBoxWidget extends StatelessWidget {
  final String text;

  const _CheckListsTabCardViewsInfoBoxWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(68, 68, 68, 0.05),
      child: Row(
        children: [
          const Icon(
            Icons.remove_red_eye_rounded,
            size: 19,
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

class _CheckListsTabCardTimeInfoBoxWidget extends StatelessWidget {
  final String text;

  const _CheckListsTabCardTimeInfoBoxWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            Icons.watch_later_rounded,
            size: 19,
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

class _CheckListsTabCardRatingInfoBoxWidget extends StatelessWidget {
  final String text;

  const _CheckListsTabCardRatingInfoBoxWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(255, 199, 0, 0.2),
      child: Row(
        children: [
          const Icon(
            Icons.star_rounded,
            size: 19,
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
