import 'package:fifty_four_vibes/screens/sign_up_screen/providers/user_model_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../configures/app_buttons.dart';
import '../../../configures/app_form_fields.dart';
import '../../../configures/app_texts.dart';

class EmailDataScreen extends ConsumerWidget {
  const EmailDataScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    //declare the notifier for the email data
    final userNotifier = ref.read(userProvider.notifier);

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

                const App25PointsLabel(label: 'What Is Your Email?'),

                SizedBox(height: MediaQuery.of(context).size.height * 0.015),

                AppFormFieldWithPassword(
                  isPassword: false,
                  hintText: 'Enter your mail here',
                  inputType: TextInputType.emailAddress,
                  onValueChanged: (value) => userNotifier.updateEmail(value), //update the user email with this data
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.025),

                const AppNormalPointsLabel(label: "You'll need to confirm this email later."),

                SizedBox(height: MediaQuery.of(context).size.height * 0.025),
                const Row(
                  children: [
                    Expanded(
                        child: OutlinedAppButton(
                        buttonText: 'Next',
                        buttonBackgroundColor: Colors.white,
                        isLandscape: false,
                        pageRoute: '/password_data_screen',
                        buttonTextColor: Colors.black
                    )),
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
