import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class WelcomeMessageSubTitleText extends StatelessWidget {
  const WelcomeMessageSubTitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Here is the place to buy the food you want.',
      style: TextStyle(
        color: CustomColor.lightWhiteColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.18,
      ),
    );
  }
}
