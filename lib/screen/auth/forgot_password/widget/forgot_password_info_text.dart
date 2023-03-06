import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ForgotPasswordInfoText extends StatelessWidget {
  const ForgotPasswordInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'We need to verify you. We will send you a one-time authorization code.',
      style: TextStyle(
        color: CustomColor.greyColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.63,
      ),
    );
  }
}
