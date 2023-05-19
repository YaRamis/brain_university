import 'package:flutter/material.dart';

import '../../theme/app_box_shadows.dart';

class AppCardContainerWidget extends StatelessWidget {
  final Widget child;
  final double borderRadius;

  const AppCardContainerWidget(
      {Key? key, required this.child, this.borderRadius = 24})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.white,
        boxShadow: const [AppBoxShadows.greyBoxShadow],
      ),
      child: child,
    );
  }
}
