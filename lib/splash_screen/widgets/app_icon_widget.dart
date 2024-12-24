import 'package:flutter/cupertino.dart';

class AppIconWidget extends StatelessWidget {
  const AppIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      padding: const EdgeInsets.all(8.0),
      child: const Image(image: AssetImage("assets/logo/54vibes-logo.png")),
    );
  }
}
