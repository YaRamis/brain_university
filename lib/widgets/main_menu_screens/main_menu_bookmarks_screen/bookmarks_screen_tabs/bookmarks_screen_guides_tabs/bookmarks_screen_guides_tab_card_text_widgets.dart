part of 'bookmarks_screen_guides_tab_card_widget.dart';

class _SizeTextWidget extends StatelessWidget {
  final String text;

  const _SizeTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 11,
        color: AppColors.secondaryColor,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _NameTextWidget extends StatelessWidget {
  final String text;

  const _NameTextWidget({required this.text});

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
