import 'package:brain_university/resources/brain_university_icons.dart';
import 'package:brain_university/widgets/common_widgets/app_buttons.dart';
import 'package:brain_university/widgets/common_widgets/app_container_widgets.dart';
import 'package:capped_progress_indicator/capped_progress_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../theme/app_colors.dart';
import '../common_widgets/user_interest_box_widget.dart';

class ProgramDetailsScreenWidget extends StatefulWidget {
  const ProgramDetailsScreenWidget({Key? key}) : super(key: key);

  @override
  State<ProgramDetailsScreenWidget> createState() =>
      _ProgramDetailsScreenWidgetState();
}

class _ProgramDetailsScreenWidgetState
    extends State<ProgramDetailsScreenWidget> {
  var isExpandedFirst = false;
  var isExpandedSecond = false;
  var isExpandedThird = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          icon: const Icon(
            BrainUniversityIcons.back,
            color: AppColors.textColor,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            icon: const Icon(
              BrainUniversityIcons.more,
              color: AppColors.textColor,
              size: 26,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppCardContainerWidget(
                borderRadius: 20,
                child: Container(
                  width: double.infinity,
                  height: 187,
                  color: const Color(0xFFE2E8FF),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Bazar',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.mainColor,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Wildberries',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const AppRatingBarBuilderWidget(initialRating: 4),
                  const SizedBox(width: 7),
                  const Text(
                    '4,0',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(width: 18),
                  const Icon(
                    BrainUniversityIcons.users,
                    color: AppColors.mainColor,
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '164',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  const SizedBox(width: 18),
                  const Icon(
                    BrainUniversityIcons.doc,
                    color: Color.fromRGBO(68, 68, 68, 1),
                    size: 18,
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    '59',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Поможет разобраться в принципах успешной работы на маркетплейсах: что продавать, как находить клиетов, чем выделиться на фоне конкурентов, как начать делегировать задачи и др.',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.textColor,
                ),
              ),
              const SizedBox(height: 24),
              AppDefaultButton(text: 'Оформить подписку', onPressed: () {}),
              const SizedBox(height: 30),
              const MyExpansionTileWidget(
                title: 'Описание',
                children: [
                  Text(
                    'Поможет разобраться в принципах успешной работы на маркетплейсах: что продавать, как находить клиетов, чем выделиться на фоне конкурентов, как начать делегировать задачи\n\nПоможет разобраться в принципах успешной работы на маркетплейсах: что продавать, как находить клиетов, чем выделиться на фоне\n\nПоможет разобраться в принципах успешной работы на маркетплейсах: что продавать, как находить клиетов, чем выделиться на фоне конкурентов, как начать делегировать задачи и др.',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: AppColors.textColor,
                    ),
                  ),
                ],
              ),
              MyExpansionTileWidget(
                title: 'Кому подходит',
                children: [
                  Wrap(
                    runSpacing: 8,
                    spacing: 8,
                    children: const [
                      UserInterestBoxWidget(text: 'Поставщикам'),
                      UserInterestBoxWidget(text: 'Менеджерам'),
                      UserInterestBoxWidget(text: 'Предпринимателям'),
                    ],
                  ),
                ],
              ),
              MyExpansionTileWidget(
                title: 'Отзывы',
                children: [
                  Row(
                    children: const [
                      Text(
                        '4,0',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 6),
                      AppRatingBarBuilderWidget(initialRating: 4),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const AppLinearCappedRatingIndicatorWidget(
                    value: 0.8,
                    ratingCount: 64,
                    ratedStarCount: 5,
                  ),
                  const SizedBox(height: 8),
                  const AppLinearCappedRatingIndicatorWidget(
                    value: 0.2,
                    ratingCount: 32,
                    ratedStarCount: 4,
                  ),
                  const SizedBox(height: 8),
                  const AppLinearCappedRatingIndicatorWidget(
                    value: 0.05,
                    ratingCount: 7,
                    ratedStarCount: 3,
                  ),
                  const SizedBox(height: 8),
                  const AppLinearCappedRatingIndicatorWidget(
                    value: 0,
                    ratingCount: 0,
                    ratedStarCount: 2,
                  ),
                  const SizedBox(height: 8),
                  const AppLinearCappedRatingIndicatorWidget(
                    value: 0.05,
                    ratingCount: 2,
                    ratedStarCount: 1,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AppRatingBarBuilderWidget extends StatelessWidget {
  final double initialRating;
  final double itemSize;
  final double horizontalItemPadding;
  const AppRatingBarBuilderWidget({
    super.key,
    required this.initialRating,
    this.itemSize = 18,
    this.horizontalItemPadding = 1,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: initialRating,
      minRating: 1,
      direction: Axis.horizontal,
      unratedColor: AppColors.secondaryColor,
      allowHalfRating: true,
      itemCount: 5,
      itemSize: itemSize,
      itemPadding: EdgeInsets.symmetric(horizontal: horizontalItemPadding),
      itemBuilder: (context, _) => const Icon(
        BrainUniversityIcons.star,
        color: AppColors.starRatingColor,
      ),
      onRatingUpdate: (double value) {},
    );
  }
}

class AppLinearCappedRatingIndicatorWidget extends StatelessWidget {
  final double value;
  final int ratingCount;
  final int ratedStarCount;
  const AppLinearCappedRatingIndicatorWidget({
    Key? key,
    required this.value,
    required this.ratingCount,
    required this.ratedStarCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: AppLinearCappedProgressIndicatorWidget(value: value),
        ),
        SizedBox(
          width: 120,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                ratingCount.toString(),
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: AppColors.secondaryTextColor,
                ),
              ),
              SizedBox(width: 5),
              AppRatingBarBuilderWidget(
                initialRating: ratedStarCount.toDouble(),
                itemSize: 11,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class AppLinearCappedProgressIndicatorWidget extends StatelessWidget {
  final double value;

  const AppLinearCappedProgressIndicatorWidget({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return LinearCappedProgressIndicator(
      minHeight: 8,
      value: value,
      color: AppColors.mainColor,
      backgroundColor: const Color(0xFFE2E8FF),
    );
  }
}

class MyExpansionTileWidget extends StatefulWidget {
  final String title;
  final List<Widget> children;

  const MyExpansionTileWidget(
      {Key? key, required this.title, required this.children})
      : super(key: key);

  @override
  State<MyExpansionTileWidget> createState() => _MyExpansionTileWidgetState();
}

class _MyExpansionTileWidgetState extends State<MyExpansionTileWidget> {
  var isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData().copyWith(
        dividerColor: Colors.transparent,
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
      ),
      child: ExpansionTile(
        expandedAlignment: Alignment.topLeft,
        expandedCrossAxisAlignment: CrossAxisAlignment.start,
        childrenPadding: const EdgeInsets.only(bottom: 10),
        tilePadding: const EdgeInsets.only(right: 5),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: AppColors.textColor,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
        trailing: AnimatedRotation(
          turns: isExpanded ? 0.375 : 0,
          duration: const Duration(milliseconds: 200),
          child: const Icon(
            BrainUniversityIcons.plus,
            size: 15,
            color: AppColors.textColor,
          ),
        ),
        onExpansionChanged: (isChanged) {
          isExpanded = isChanged;
          setState(() {});
        },
        children: widget.children,
      ),
    );
  }
}
