import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:fifty_four_vibes/Screens/homepage.dart';
import 'package:flutter/cupertino.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlutterSplashScreen.fadeIn(
        backgroundColor: CupertinoColors.black,
          nextScreen: const Homepage(),
          childWidget: const SizedBox(
            height: 250,
            width: 250,
            child: Image(image: AssetImage("assets/logo/54vibes-logo.png")),
          )
      ),
    );
  }
}
