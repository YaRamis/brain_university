part of 'main_menu_market_screen_card_widget.dart';

class _MarketCardArticlesInfoBoxWidget extends StatelessWidget {
  final String text;

  const _MarketCardArticlesInfoBoxWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(68, 68, 68, 0.05),
      child: Row(
        children: [
          const Icon(
            Icons.article_rounded,
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

class _MarketCardPeopleInfoBoxWidget extends StatelessWidget {
  final String text;

  const _MarketCardPeopleInfoBoxWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            Icons.people_rounded,
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

class _MarketCardRatingInfoBoxWidget extends StatelessWidget {
  final String text;

  const _MarketCardRatingInfoBoxWidget({required this.text});

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
