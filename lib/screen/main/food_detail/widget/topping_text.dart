import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ToppingText extends StatelessWidget {
  const ToppingText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Add some topping',
      style: TextStyle(
        color: CustomColor.titleColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
