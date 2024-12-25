import 'package:fifty_four_vibes/configures/app_buttons.dart';
import 'package:fifty_four_vibes/configures/app_colors.dart';
import 'package:fifty_four_vibes/splash_screen/widgets/app_icon_widget.dart';
import 'package:fifty_four_vibes/splash_screen/widgets/push_notification_reason_widget.dart';
import 'package:flutter/material.dart';

class AllowPushNotificationPortrait extends StatelessWidget {
  const AllowPushNotificationPortrait({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
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

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  "Push Notification",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 35
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

              // introduce the push notification reason widget
              const PushNotificationReasonWidget(reason: "Allow us to notify you\nwhen hot new music is\nreleased"),

              SizedBox(height: MediaQuery.of(context).size.height * 0.05),

              // introduce the customized outlined button
              OutlinedAppButton(buttonText: "Ok, Got it?", buttonBackgroundColor: AppColor().defaultColor, isLandscape: false),

              // introduce the customized text button
              const AppTextButton(buttonText: "Maybe Later"),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
            ],
          ),
        ),
      ),
    );
  }
}
