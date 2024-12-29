import 'package:fifty_four_vibes/configures/app_buttons.dart';
import 'package:fifty_four_vibes/configures/app_colors.dart';
import 'package:fifty_four_vibes/configures/app_icon_widget.dart';
import 'package:flutter/material.dart';

import '../../../configures/app_texts.dart';

class AuthenticationScreenPortrait extends StatelessWidget {
  const AuthenticationScreenPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              
              // introduce the app icon widget
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: AppIconWidget(containerWidth: 0.3),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.08),

              // introduce the app header text
              const AppHeaderText(headerText: "Experience Music\nIn Real-Time\nWith Others.", fontSize: 45, fontWeight: FontWeight.w500, lineHeight: 1.5,),

              SizedBox(height: MediaQuery.of(context).size.height * 0.08),

              // if the screen size is less than 400, show the buttons in Column layout
              // else use the row-and-column layout
              MediaQuery.of(context).size.width < 400?
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: Column(
                   children: [
                     // introduce the custom outlined button
                     AuthOutlinedButton(buttonText: "Log In", buttonBackgroundColor: AppColor().greyBackgroundColor, pageRoute: '/login_screen',),

                     SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                     AuthOutlinedButton(buttonText: "Sign Up Free", buttonBackgroundColor: AppColor().defaultColor, pageRoute: '',),

                     SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                     const AuthIconButton(buttonText: "Continue With Google", icon: "assets/icons/google_PNG19635.png", iconWidth: 0.1),

                     SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                     const AuthIconButton(buttonText: "Continue With Facebook", icon: "assets/icons/Facebook-Icon-PNG-1.png", iconWidth: 0.08),

                     SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                     const AuthIconButton(buttonText: "Continue With Apple", icon: "assets/icons/apple-512.png", iconWidth: 0.08),

                     SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                   ],
                 ),
               )
              : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // introduce the custom outlined button
                        Expanded(child: OutlinedAppButton(buttonText: "Log In", buttonBackgroundColor: AppColor().greyBackgroundColor, isLandscape: false, pageRoute: "/login_screen",)),

                        SizedBox(width: MediaQuery.of(context).size.width * 0.03),

                        // introduce the custom outlined button
                        Expanded(child: OutlinedAppButton(buttonText: "Sign Up Free", buttonBackgroundColor: AppColor().defaultColor, isLandscape: false, pageRoute: '')),
                      ],
                    ),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const AuthIconButton(buttonText: "Continue With Google", icon: "assets/icons/google_PNG19635.png", iconWidth: 0.1),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const AuthIconButton(buttonText: "Continue With Facebook", icon: "assets/icons/Facebook-Icon-PNG-1.png", iconWidth: 0.08),

                    SizedBox(height: MediaQuery.of(context).size.height * 0.02),

                    const AuthIconButton(buttonText: "Continue With Apple", icon: "assets/icons/apple-512.png", iconWidth: 0.08)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AuthIconButton extends StatelessWidget {

  final String buttonText;
  final String icon;
  final double iconWidth;

  const AuthIconButton({super.key, required this.buttonText, required this.icon, required this.iconWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppIconButton(buttonText: buttonText, icon: icon, iconWidth: iconWidth),
        ),
      ],
    );
  }
}

class AuthOutlinedButton extends StatelessWidget {

  final String buttonText;
  final Color buttonBackgroundColor;
  final String pageRoute;

  const AuthOutlinedButton({super.key, required this.buttonText, required this.buttonBackgroundColor, required this.pageRoute});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: OutlinedAppButton(buttonText: buttonText, buttonBackgroundColor: buttonBackgroundColor, isLandscape: false, pageRoute: pageRoute)),
      ],
    );
  }
}

