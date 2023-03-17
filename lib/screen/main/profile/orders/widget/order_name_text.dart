import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class OrderNameText extends StatelessWidget {
  final String name;

  const OrderNameText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        height: 1.5,
        color: CustomColor.titleColor,
      ),
    );
  }
}
