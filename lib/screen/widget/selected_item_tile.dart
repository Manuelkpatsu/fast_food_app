import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SelectedItemTile extends StatelessWidget {
  final Food food;

  const SelectedItemTile({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount = (food.quantity * food.price) != 0
        ? NumberFormat("###,###.00").format((food.quantity * food.price))
        : (food.quantity * food.price).toStringAsFixed(2);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          food.name,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: CustomColor.blackColor.withOpacity(0.7),
            height: 1.5,
          ),
        ),
        Text(
          '₵$formattedAmount',
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: CustomColor.blackColor,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
