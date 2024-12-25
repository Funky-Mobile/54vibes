import 'package:fifty_four_vibes/configures/app_buttons.dart';
import 'package:fifty_four_vibes/configures/app_colors.dart';
import 'package:fifty_four_vibes/configures/app_texts.dart';
import 'package:fifty_four_vibes/screens/splash_screen/widgets/push_notification_reason_widget.dart';
import 'package:flutter/material.dart';

import '../../../configures/app_icon_widget.dart';


class AllowPushNotificationPortrait extends StatelessWidget {
  const AllowPushNotificationPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                //introduce the app icon widget
                const AppIconWidget(containerWidth: 0.3),

                // introduce the push notification reason widget
                const PushNotificationReasonWidget(reason: "In order to provide the best experience we\nask you to enable the following permissions:"),

                SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                Container(
                  width: MediaQuery.of(context).size.width * 0.2,
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.withOpacity(0.4), width: 2),
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey.withOpacity(0.3)
                  ),
                  child: const Image(image: AssetImage("assets/icons/notifications_active_50dp_EF6F06_FILL0_wght500_GRAD0_opsz48.png")),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.03),

                // introduce the app header text
                const AppHeaderText(headerText: "Push Notification", fontSize: 35, fontWeight: FontWeight.w900, lineHeight: 1.1,),

                // introduce the push notification reason widget
                const PushNotificationReasonWidget(reason: "Allow us to notify you\nwhen hot new music is\nreleased"),

                SizedBox(height: MediaQuery.of(context).size.height * 0.05),

                // introduce the customized outlined button
                Row(
                  children: [
                    Expanded(child: OutlinedAppButton(buttonText: "Ok, Got it?", buttonBackgroundColor: AppColor().defaultColor, isLandscape: false)),
                  ],
                ),

                // introduce the customized text button
                AppTextButton(
                  buttonText: "Maybe Later",
                  onPressed: () {
                    Navigator.pushNamed(context, "/authentication_screen");
                  },
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
