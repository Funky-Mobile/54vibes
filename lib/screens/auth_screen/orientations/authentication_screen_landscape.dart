import 'package:fifty_four_vibes/configures/app_colors.dart';
import 'package:fifty_four_vibes/configures/app_icon_widget.dart';
import 'package:flutter/material.dart';

import '../../../configures/app_texts.dart';
import '../widgets/auth_custom_button.dart';

class AuthenticationScreenLandscape extends StatelessWidget {
  const AuthenticationScreenLandscape({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [

                  // introduce the app icon widget
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: AppIconWidget(containerWidth: 0.18),
                  ),

                  // SizedBox(height: MediaQuery.of(context).size.height * 0.08),

                  // introduce the app header text
                  const AppHeaderText(headerText: "Experience Music\nIn Real-Time\nWith Others.", fontSize: 35, fontWeight: FontWeight.w500, lineHeight: 1.5,),

                  SizedBox(height: MediaQuery.of(context).size.height * 0.08),
                ],
              ),

              // if the screen size is less than 400, show the buttons in Column layout
              // else use the row-and-column layout
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // introduce the custom outlined button
                    AuthOutlinedButton(buttonText: "Log In", buttonBackgroundColor: AppColor().greyBackgroundColor, pageRoute: '/login_screen'),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    AuthOutlinedButton(buttonText: "Sign Up Free", buttonBackgroundColor: AppColor().defaultColor, pageRoute: ''),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const AuthIconButton(buttonText: "Continue With Google", icon: "assets/icons/google_PNG19635.png", iconWidth: 0.05),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const AuthIconButton(buttonText: "Continue With Facebook", icon: "assets/icons/Facebook-Icon-PNG-1.png", iconWidth: 0.04),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const AuthIconButton(buttonText: "Continue With Apple", icon: "assets/icons/apple-512.png", iconWidth: 0.04),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}