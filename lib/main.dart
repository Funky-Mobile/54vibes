import 'package:fifty_four_vibes/screens/auth_screen/authentication_screen.dart';
import 'package:fifty_four_vibes/screens/splash_screen/allow_push_notification.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
      //<--disable the debug badge at the right top corner of the
      //<--mobile screen
      debugShowCheckedModeBanner: false,

      //<--set the main/home route--
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => const AllowPushNotification(),
        '/authentication_screen': (BuildContext context) => const AuthenticationScreen()
      },
    )
  );
}
