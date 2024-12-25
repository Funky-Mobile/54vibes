import 'package:flutter/cupertino.dart';

class AppIconWidget extends StatelessWidget {
  final double containerWidth;
  const AppIconWidget({super.key, required this.containerWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * containerWidth,
      padding: const EdgeInsets.all(8.0),
      child: const Image(image: AssetImage("assets/logo/54vibes-logo.png")),
    );
  }
}
