import 'package:flutter/material.dart';
import 'package:wirelism/common/widgets/app_background.dart';
import 'package:wirelism/common/widgets/app_button.dart';
import 'package:wirelism/common/widgets/app_text.dart';
import 'package:wirelism/common/widgets/app_text_with_icon.dart';
import 'package:wirelism/core/constants/strings_const.dart';
import 'package:wirelism/core/constants/widgets_const.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: AppBackGround(
        bottomColor: Colors.blue.shade700,
        topColor: Colors.lightBlueAccent.shade200,
        child: Center(
          heightFactor: 12,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 50),
                child: AppTextWithIcon(
                  text: appName,
                  textColor: Colors.white,
                  fontSize: 34,
                  iconSize: 40,
                  textBold: true,
                ),
              ),
              const Expanded(
                  child: Icon(
                Icons.bluetooth,
                color: Colors.white,
                size: 125,
              )),
              const SizedBox(height: 16.0),
              const AppText(
                text: scanNearby,
                bold: false,
                textColor: Colors.white,
                fontSize: 18,
              ),
              const SizedBox(height: 16.0),
              AppButton(
                text: scan,
                active: true,
                borderColor: Colors.white,
                buttonColor: whiteColor,
                textColor: Colors.blue.shade700,
                fontSize: 24,
                bold: true,
                onPressed: () {
                  Navigator.pushNamed(context, '/Scanning');
                },
              ),
              const SizedBox(height: 16.0),
              AppText(
                text: localStorage,
                bold: false,
                clickAble: true,
                textColor: Colors.white,
                fontSize: 18,
                onPressed: () {},
              ),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    ));
  }
}
