import 'package:flutter/cupertino.dart';

class AppIconWidget extends StatelessWidget {
  final double containerWidth;
  const AppIconWidget({super.key, required this.containerWidth});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * containerWidth,
      child: const Image(image: AssetImage("assets/logo/54vibes-logo.png")),
    );
  }
}
