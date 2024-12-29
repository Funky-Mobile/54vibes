import 'package:fifty_four_vibes/screens/sign_up_screen/data_screens/email_data_screen.dart';
import 'package:flutter/cupertino.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {
      //display the portrait view if the device screen if below 800
      if (orientation == Orientation.portrait) {
        return const EmailDataScreen();
      } else {

        if(MediaQuery.of(context).size.width < 800) {
          return const Text('mini screen');
        }

        return const Text('landscape screen');
      }
    });
  }
}
