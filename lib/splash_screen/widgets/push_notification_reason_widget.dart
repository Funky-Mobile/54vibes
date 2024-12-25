import 'package:flutter/material.dart';

class PushNotificationReasonWidget extends StatelessWidget {
  final String reason;
  const PushNotificationReasonWidget({super.key, required this.reason});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        reason,
        style: const TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 18
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}