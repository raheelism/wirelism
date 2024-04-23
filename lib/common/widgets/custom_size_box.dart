import 'package:flutter/material.dart';

class SBox extends StatelessWidget {
  final double? equal;
  final double? height;
  final double? width;
  final Widget? child;

  const SBox({super.key, this.height, this.width, this.child, this.equal});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: equal ?? width ?? 0,
      height: equal ?? height ?? 0,
      child: child,
    );
  }
}
