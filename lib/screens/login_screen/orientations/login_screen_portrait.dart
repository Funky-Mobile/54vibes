import 'package:fifty_four_vibes/configures/app_buttons.dart';
import 'package:fifty_four_vibes/configures/app_form_fields.dart';
import 'package:fifty_four_vibes/configures/app_texts.dart';
import 'package:flutter/material.dart';

class LoginScreenPortrait extends StatefulWidget {

  const LoginScreenPortrait({super.key});

  @override
  State<LoginScreenPortrait> createState() => _LoginScreenPortraitState();
}

class _LoginScreenPortraitState extends State<LoginScreenPortrait> {

  bool _obscureText = true;

  //a simple function to hide and un-hide the password
  void hideShowPassword() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: (){
              //go back to the authentication screen
              Navigator.pushNamed(context, '/authentication_screen');
            },
            icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white)
        ), // the back button

        // set the page title
        title: const Text(
          "Login",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        centerTitle: true,
      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                const App25PointsLabel(label: 'Email Or Username'),

                SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                const AppFormFieldWithPassword(isPassword: false, hintText: 'Enter your mail here'),

                SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                const App25PointsLabel(label: 'Password'),

                SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                const AppFormFieldWithPassword(isPassword: true, hintText: 'Enter your mail here'),

                SizedBox(height: MediaQuery.of(context).size.height * 0.035),
                const Row(
                  children: [
                    Expanded(child: OutlinedAppButton(buttonText: 'Log In', buttonBackgroundColor: Colors.white, isLandscape: false, pageRoute: 'pageRoute', buttonTextColor: Colors.black)),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.035),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
