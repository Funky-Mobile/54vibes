import 'package:fifty_four_vibes/screens/auth_screen/orientations/authentication_screen_portrait.dart';
import 'package:fifty_four_vibes/screens/splash_screen/allow_push_notification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      //<--disable the debug badge at the right top corner of the
      //<--mobile screen
      debugShowCheckedModeBanner: false,

      //<--set the main/home route--
      // home: Homepage(),
      home: AuthenticationScreenPortrait(),
    )
  );
}
