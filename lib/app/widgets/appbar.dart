import 'package:flutter/material.dart';

buildAppbar(BuildContext context,
    {bool hasSettings = false, Function? onPressed}) {
  return AppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.arrow_back,
        color: Colors.black,
        size: 32,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    actions: hasSettings
        ? [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {
                onPressed!();
                //Navigator.push()
              },
            )
          ]
        : null,
  );
}
