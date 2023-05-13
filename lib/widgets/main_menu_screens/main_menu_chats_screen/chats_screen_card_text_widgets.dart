part of 'main_menu_chats_screen_card_widget.dart';

class _NameTextWidget extends StatelessWidget {
  final String text;

  const _NameTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w700,
        fontSize: 15,
        color: AppColors.textColor,
      ),
    );
  }
}

class _MessageTextWidget extends StatelessWidget {
  final String text;

  const _MessageTextWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: const TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 13,
        color: Color.fromRGBO(18, 18, 18, 0.5),
      ),
    );
  }
}
