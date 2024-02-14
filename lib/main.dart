import 'package:fifty_four_vibes/Screens/homepage.dart';
import 'package:fifty_four_vibes/Screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      //<--disable the debug badge at the right top corner of the
      //<--mobile screen
      debugShowCheckedModeBanner: false,

      //<--set the main/home route--
      home: Homepage(),
      // home: SplashScreen(),
    )
  );
}

