import 'package:fifty_four_vibes/screens/auth_screen/orientations/authentication_screen_landscape.dart';
import 'package:flutter/cupertino.dart';

import 'orientations/authentication_screen_portrait.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {

      //display the portrait view if the device screen if below 800
      if(MediaQuery.of(context).size.width < 800) {
        return const AuthenticationScreenPortrait();
      }

      if (orientation == Orientation.portrait) {
        // return the portrait view
        return const AuthenticationScreenPortrait();

      } else {
        // return the landscape view
        return const AuthenticationScreenLandscape();

      }
    });
  }
}
