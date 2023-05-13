part of 'main_menu_market_screen_card_widget.dart';

class _PriceWidget extends StatelessWidget {
  final String price;

  const _PriceWidget({required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 30,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            color: AppColors.mainColor,
            borderRadius: BorderRadius.circular(4),
            boxShadow: const [AppBoxShadows.blueBoxShadow],
          ),
          child: Text(
            '$price руб/мес',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }
}
