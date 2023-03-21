import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class AddressText extends StatelessWidget {
  const AddressText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Address',
      style: TextStyle(
        color: CustomColor.blackColor,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        height: 1.5,
      ),
    );
  }
}
