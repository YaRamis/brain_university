part of 'bookmarks_screen_guides_tab_card_widget.dart';

class _GuidesTabCardDownloadInfoBoxWidget extends StatelessWidget {
  final String text;

  const _GuidesTabCardDownloadInfoBoxWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return AppCardInfoBoxWidget(
      backgroundColor: const Color.fromRGBO(65, 104, 245, 0.1),
      child: Row(
        children: [
          const Icon(
            Icons.download_for_offline_rounded,
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
