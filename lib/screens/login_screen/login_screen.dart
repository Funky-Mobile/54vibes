import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(builder: (context, orientation) {
        //display the portrait view if the device screen if below 800
        if(MediaQuery.of(context).size.width < 800) {
          return Text("mini screen");
        }

        if (orientation == Orientation.portrait) {
          return Text("normal screen");
        } else {
          return Text("landscape screen");
        }
      }),
    );
  }
}
