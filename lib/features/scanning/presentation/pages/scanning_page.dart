import 'package:flutter/material.dart';
import 'package:wirelism/features/scanning/presentation/widgets/scanning_widget.dart';

import '../../../../common/widgets/app_background.dart';
import '../../../../common/widgets/app_text.dart';
import '../../../../common/widgets/app_text_with_icon.dart';
import '../../../../core/constants/strings_const.dart';

class ScanningPage extends StatelessWidget {
  const ScanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AppBackGround(
          bottomColor: Colors.blue.shade700,
          topColor: Colors.lightBlueAccent.shade200,
          child: const Center(
            heightFactor: 12,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: AppTextWithIcon(
                    text: appName,
                    textColor: Colors.white,
                    fontSize: 34,
                    iconSize: 40,
                    textBold: true,
                  ),
                ),
                Expanded(child: ScanningWidget()),
                SizedBox(height: 84.0),
                AppText(
                  text: scanning,
                  bold: false,
                  textColor: Colors.white,
                  fontSize: 18,
                ),
                SizedBox(height: 84.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
