import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ShippingAddressText extends StatelessWidget {
  const ShippingAddressText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Shipping Address',
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        height: 1.5,
        color: CustomColor.blackColor,
      ),
    );
  }
}
