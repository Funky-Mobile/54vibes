import 'package:flutter/material.dart';

class OutlinedAppButton extends StatelessWidget {
  final String buttonText;
  final Color buttonBackgroundColor;
  final bool isLandscape;
  const OutlinedAppButton({super.key, required this.buttonText, required this.buttonBackgroundColor, required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      child: Row(
        children: [
          isLandscape? OutlinedButton(
          onPressed: () {
            //the user should allow notification when he press this button
            },

                style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    minimumSize: MediaQuery.of(context).size * 0.06,
                    maximumSize: MediaQuery.of(context).size * 0.5,
                    backgroundColor: buttonBackgroundColor
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
            ) : Expanded(
            child: OutlinedButton(
                onPressed: () {
                  //the user should allow notification when he press this button
                },

                style: OutlinedButton.styleFrom(
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    minimumSize: MediaQuery.of(context).size * 0.06,
                    maximumSize: MediaQuery.of(context).size * 0.5,
                    backgroundColor: buttonBackgroundColor
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    buttonText,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),
                    textAlign: TextAlign.center,
                  ),
                )
            ),
          ),
        ],
      ),
    );
  }
}

class AppTextButton extends StatelessWidget {
  final String buttonText;
  const AppTextButton({super.key, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          // what happens when this text button is pressed?
        },
        child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
          textAlign: TextAlign.center,
        )
    );
  }
}

