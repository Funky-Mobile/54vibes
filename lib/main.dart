import 'package:fifty_four_vibes/splash_screen/widgets/splash_screen_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      //<--disable the debug badge at the right top corner of the
      //<--mobile screen
      debugShowCheckedModeBanner: false,

      //<--set the main/home route--
      // home: Homepage(),
      home: SplashScreenWidget(),
    )
  );
}

