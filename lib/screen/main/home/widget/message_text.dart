import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  const MessageText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Choose your favorite food',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.5,
        color: CustomColor.blackColor,
      ),
    );
  }
}
