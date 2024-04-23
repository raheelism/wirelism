import 'package:flutter/material.dart';
import 'package:wirelism/core/constants/widgets_const.dart';

class AppBackGround extends StatelessWidget {
  final Widget child;
  final Color bottomColor;
  final Color topColor;

  const AppBackGround(
      {super.key,
      required this.child,
      this.bottomColor = darkBlueColor,
      this.topColor = lightBlueColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [bottomColor, topColor],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter),
      ),
      child: child,
    );
  }
}
