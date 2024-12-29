import 'package:flutter/cupertino.dart';

import '../../../configures/app_buttons.dart';

class AuthIconButton extends StatelessWidget {

  final String buttonText;
  final String icon;
  final double iconWidth;

  const AuthIconButton({super.key, required this.buttonText, required this.icon, required this.iconWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppIconButton(buttonText: buttonText, icon: icon, iconWidth: iconWidth),
        ),
      ],
    );
  }
}

class AuthOutlinedButton extends StatelessWidget {

  final String buttonText;
  final Color buttonBackgroundColor;
  final String pageRoute;

  const AuthOutlinedButton({super.key, required this.buttonText, required this.buttonBackgroundColor, required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: OutlinedAppButton(buttonText: buttonText, buttonBackgroundColor: buttonBackgroundColor, isLandscape: false, pageRoute: pageRoute)),
      ],
    );
  }
}
