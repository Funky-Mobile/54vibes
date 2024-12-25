import 'package:fifty_four_vibes/splash_screen/widgets/allow_push_notification_landscape.dart';
import 'package:fifty_four_vibes/splash_screen/widgets/allow_push_notification_portrait.dart';
import 'package:flutter/material.dart';

class AllowPushNotification extends StatelessWidget {
  const AllowPushNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(builder: (context, orientation) {

      //display the portrait view if the device screen if below 800
      if(MediaQuery.of(context).size.width < 800) {
        return const AllowPushNotificationPortrait();
      }

      if (orientation == Orientation.portrait) {
        return const AllowPushNotificationPortrait();
      } else {
        return const AllowPushNotificationLandscape();
      }
    });
  }
}
