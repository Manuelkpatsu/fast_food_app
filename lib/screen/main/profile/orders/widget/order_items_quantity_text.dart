import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class OrderItemsQuantityText extends StatelessWidget {
  final int quantity;

  const OrderItemsQuantityText({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${quantity}x',
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.titleColor.withOpacity(0.6),
      ),
    );
  }
}
