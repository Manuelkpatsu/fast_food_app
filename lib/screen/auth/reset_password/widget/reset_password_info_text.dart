import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ResetPasswordInfoText extends StatelessWidget {
  const ResetPasswordInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Please fill in the field below to reset your current password.',
      style: TextStyle(
        color: CustomColor.greyColor,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.63,
      ),
    );
  }
}
