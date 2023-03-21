import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class SelectedItemText extends StatelessWidget {
  const SelectedItemText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Selected Item',
      style: TextStyle(
        color: CustomColor.blackColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
