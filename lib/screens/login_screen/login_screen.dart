import 'package:fifty_four_vibes/screens/login_screen/orientations/login_screen_portrait.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        //display the portrait view if the device screen if below 800
        if (orientation == Orientation.portrait) {
          return const LoginScreenPortrait();
        } else {

          if(MediaQuery.of(context).size.width < 800) {
            return const LoginScreenPortrait();
          }

          return const LoginScreenPortrait();
        }
      }),
    );
  }
}
