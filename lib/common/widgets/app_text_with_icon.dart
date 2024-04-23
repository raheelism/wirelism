import 'package:flutter/material.dart';
import 'package:wirelism/common/widgets/custom_size_box.dart';

class AppTextWithIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final double iconSize;
  final bool textBold;
  final bool hasIcon;
  final double fontSize;
  final Color textColor;
  final String text;

  const AppTextWithIcon({
    super.key,
    this.textBold = false,
    this.fontSize = 14.0,
    this.textColor = Colors.black,
    required this.text,
    this.icon = Icons.park_outlined,
    this.hasIcon = true,
    this.iconColor = Colors.white,
    this.iconSize = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        hasIcon
            ? Icon(
                icon,
                color: iconColor,
                size: iconSize,
              )
            : const SBox(),
        Text(
          text,
          style: TextStyle(
            fontWeight: textBold ? FontWeight.bold : FontWeight.normal,
            fontSize: fontSize,
            color: textColor,
          ),
        ),
      ],
    );
  }
}
