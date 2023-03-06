import 'package:flutter/material.dart';

class WelcomeMessageTitleText extends StatelessWidget {
  const WelcomeMessageTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Enjoy your fast food only in Makanskuy',
      style: TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
