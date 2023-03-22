import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class OrderStatusText extends StatelessWidget {
  const OrderStatusText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Order Status',
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.5,
        color: CustomColor.darkColor,
      ),
    );
  }
}
