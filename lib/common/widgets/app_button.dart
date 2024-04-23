import 'package:flutter/material.dart';
import 'package:wirelism/core/constants/widgets_const.dart';

class AppButton extends StatefulWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final double? fontSize;
  final Color borderColor;
  final Function onPressed;
  final Color? clickedColor;
  final bool active;
  final bool bold;

  const AppButton({
    super.key,
    required this.text,
    this.buttonColor = Colors.blue,
    this.textColor = Colors.white,
    this.borderColor = Colors.white,
    required this.onPressed,
    this.active = true,
    this.bold = false,
    this.fontSize = 18,
    this.clickedColor = whiteColor,
  });

  @override
  _AppButtonState createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool _clicked = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.active
          ? () {
              setState(() {
                _clicked = !_clicked;
              });
              widget.onPressed();
            }
          : null,
      style: ElevatedButton.styleFrom(
        backgroundColor:
            _clicked ? Colors.transparent.withOpacity(0) : widget.buttonColor,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 2.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: _clicked
              ? BorderSide(color: widget.borderColor, width: 3)
              : BorderSide.none,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(34.0, 8, 34, 8),
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: widget.fontSize,
              color: _clicked ? widget.clickedColor : widget.textColor,
              fontWeight: widget.bold ? FontWeight.bold : FontWeight.normal),
        ),
      ),
    );
  }
}
