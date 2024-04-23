import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final bool bold;
  final double fontSize;
  final Color textColor;
  final String text;
  final bool clickAble;
  final Function? onPressed;

  const AppText({
    super.key,
    this.bold = false,
    this.fontSize = 14.0,
    this.textColor = Colors.black,
    required this.text,
    this.clickAble = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        clickAble ? onPressed!() : () {};
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          fontSize: fontSize,
          color: textColor,
        ),
      ),
    );
  }
}
