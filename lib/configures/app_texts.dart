import 'package:flutter/material.dart';

class AppHeaderText extends StatelessWidget {
  final String headerText;
  final double fontSize;
  final FontWeight fontWeight;

  const AppHeaderText({super.key, required this.headerText, required this.fontSize, required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        headerText,
        style: TextStyle(
            color: Colors.white,
            fontWeight: fontWeight,
            fontSize: fontSize
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
