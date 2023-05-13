part of 'main_menu_market_screen_card_widget.dart';

class _DescriptionTextWidget extends StatelessWidget {
  final String text;

  const _DescriptionTextWidget({required this.text});

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

class _CategoryTextWidget extends StatelessWidget {
  final String text;

  const _CategoryTextWidget({required this.text});

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
