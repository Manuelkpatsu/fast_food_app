import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class FoodDetailName extends StatelessWidget {
  final String name;

  const FoodDetailName({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        color: CustomColor.titleColor,
        fontSize: 24,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
