import 'package:flutter/cupertino.dart';

class AuthenticationScreen extends StatelessWidget {
  const AuthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      if (orientation == Orientation.portrait) {

        // return the portrait view
        return Text("PORTRAIT");

      } else {

        // return the landscape view
        return Text("LANDSCAPE");

      }
    });
  }
}
