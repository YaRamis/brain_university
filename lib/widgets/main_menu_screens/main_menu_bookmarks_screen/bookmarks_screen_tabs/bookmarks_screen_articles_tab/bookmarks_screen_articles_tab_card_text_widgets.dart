part of 'bookmarks_screen_articles_tab_card_widget.dart';

class _BodyTextWidget extends StatelessWidget {
  final String text;

  const _BodyTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 15,
        color: AppColors.textColor,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _HeaderTextWidget extends StatelessWidget {
  final String text;

  const _HeaderTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 17,
        color: Colors.black,
      ),
    );
  }
}

class _DateTextWidget extends StatelessWidget {
  final String text;

  const _DateTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 13,
        color: AppColors.mainColor,
      ),
    );
  }
}
