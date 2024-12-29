import 'package:fifty_four_vibes/configures/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../configures/app_buttons.dart';
import '../../../configures/app_form_fields.dart';
import '../../../configures/app_texts.dart';

class UsernameDataScreen extends StatelessWidget {
  const UsernameDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: (){
              //go back to the authentication screen
              Navigator.pushNamed(context, '/gender_data_screen');
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
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: MediaQuery.of(context).size.width,
            minHeight: MediaQuery.of(context).size.height
          ),

          child: IntrinsicHeight(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                      const App25PointsLabel(label: 'What Is Your Name?'),

                      SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                      const AppFormFieldWithPassword(isPassword: false, hintText: 'Enter your full name here', inputType: TextInputType.name),
                    ],
                  ),

                  const Spacer(),

                  Row(
                    children: [
                      Expanded(child: OutlinedAppButton(
                          buttonText: 'Create Account',
                          buttonBackgroundColor: AppColor().defaultColor,
                          isLandscape: false,
                          pageRoute: '',
                          buttonTextColor: Colors.white
                      )),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
