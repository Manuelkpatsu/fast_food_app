import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class EnterAuthorizationCodeText extends StatelessWidget {
  const EnterAuthorizationCodeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Enter Authorization Code',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: CustomColor.darkColor,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}
