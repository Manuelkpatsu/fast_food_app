import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class EnterEmailText extends StatelessWidget {
  const EnterEmailText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Enter your email',
      style: TextStyle(
        color: CustomColor.darkColor,
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}
