import 'package:flutter/material.dart';

import '../../../configures/app_buttons.dart';
import '../../../configures/app_form_fields.dart';
import '../../../configures/app_texts.dart';

class PasswordDataScreen extends StatelessWidget {
  const PasswordDataScreen({super.key});

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
          "Create Account",
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

                const App25PointsLabel(label: 'Create A Password'),

                SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                const AppFormFieldWithPassword(isPassword: true, hintText: '',),

                SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                const AppNormalPointsLabel(label: "Use numbers and characters for strong passwords"),

                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                const Row(
                  children: [
                    Expanded(child: OutlinedAppButton(buttonText: 'Next', buttonBackgroundColor: Colors.white, isLandscape: false, pageRoute: 'pageRoute', buttonTextColor: Colors.black)),
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
