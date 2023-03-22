import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class QuantityText extends StatelessWidget {
  final int quantity;

  const QuantityText({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${quantity}x',
      style: TextStyle(
        color: CustomColor.titleColor.withOpacity(0.6),
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
      ),
    );
  }
}
