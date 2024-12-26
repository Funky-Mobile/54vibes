import 'package:flutter/material.dart';

class OutlinedAppButton extends StatelessWidget {
  final String buttonText;
  final Color buttonBackgroundColor;
  final bool isLandscape;
  const OutlinedAppButton({super.key, required this.buttonText, required this.buttonBackgroundColor, required this.isLandscape});

  @override
  Widget build(BuildContext context) {
    return isLandscape? OutlinedButton(
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
      ) : OutlinedButton(
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
              overflow: TextOverflow.ellipsis,
            ),
          )
      );
  }
}

class AppTextButton extends StatelessWidget {

  final String buttonText;
  final Function()? onPressed;

  const AppTextButton({super.key, required this.buttonText, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
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

class AppIconButton extends StatelessWidget {
  final String buttonText;
  final String icon;
  final double iconWidth;

  const AppIconButton({super.key, required this.buttonText, required this.icon, required this.iconWidth});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      onPressed: (){},
      icon: Image(
        image: AssetImage(icon),
        width: MediaQuery.of(context).size.width * iconWidth,
      ),

      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          minimumSize: MediaQuery.of(context).size * 0.06,
          maximumSize: MediaQuery.of(context).size * 0.5
      ),

      label: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          buttonText,
          style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 22
          ),
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
