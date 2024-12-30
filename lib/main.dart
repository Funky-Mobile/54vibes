import 'package:fifty_four_vibes/screens/auth_screen/authentication_screen.dart';
import 'package:fifty_four_vibes/screens/login_screen/login_screen.dart';
import 'package:fifty_four_vibes/screens/sign_up_screen/data_screens/dob_data_screen.dart';
import 'package:fifty_four_vibes/screens/sign_up_screen/data_screens/email_data_screen.dart';
import 'package:fifty_four_vibes/screens/sign_up_screen/data_screens/gender_data_screen.dart';
import 'package:fifty_four_vibes/screens/sign_up_screen/data_screens/password_data_screen.dart';
import 'package:fifty_four_vibes/screens/sign_up_screen/data_screens/username_data_screen.dart';
import 'package:fifty_four_vibes/screens/sign_up_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
      //<--disable the debug badge at the right top corner of the
      //<--mobile screen
      debugShowCheckedModeBanner: false,

      //<--set the main/home route--
      routes: <String, WidgetBuilder> {
        '/': (BuildContext context) => const AuthenticationScreen(),
        '/authentication_screen': (BuildContext context) => const AuthenticationScreen(),
        '/login_screen' : (BuildContext context) => const LoginScreen(),
        '/sign_up_screen' : (BuildContext context) => const SignUpScreen(),
        '/email_data_screen' : (BuildContext context) => const EmailDataScreen(),
        '/password_data_screen' : (BuildContext context) => const PasswordDataScreen(),
        '/dob_data_screen' : (BuildContext context) => const DobDataScreen(),
        '/gender_data_screen' : (BuildContext context) => const GenderDataScreen(),
        '/username_data_screen' : (BuildContext context) => const UsernameDataScreen()
      },
    )
  );
}
