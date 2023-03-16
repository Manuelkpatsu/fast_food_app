import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ChangePasswordInfoText extends StatelessWidget {
  const ChangePasswordInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Please fill in the field below to reset your current password.',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: CustomColor.greyColor,
        height: 1.5,
      ),
    );
  }
}
