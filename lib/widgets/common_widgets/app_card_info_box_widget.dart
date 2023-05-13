import 'package:flutter/material.dart';

class AppCardInfoBoxWidget extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;

  const AppCardInfoBoxWidget(
      {Key? key, required this.child, required this.backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      alignment: Alignment.center,
      padding: const EdgeInsets.only(right: 12, left: 10),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
