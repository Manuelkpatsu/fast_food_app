import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FoodDetailPrice extends StatelessWidget {
  final double price;

  const FoodDetailPrice({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount =
        price != 0 ? NumberFormat("###,###.00").format(price) : price.toStringAsFixed(2);

    return Text(
      '₵$formattedAmount',
      style: const TextStyle(
        color: CustomColor.primaryColor,
        fontSize: 24,
        fontWeight: FontWeight.w700,
        height: 1.5,
      ),
    );
  }
}
