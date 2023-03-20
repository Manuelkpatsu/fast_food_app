import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'increase_decrease_button.dart';
import 'quantity_text.dart';

class Quantity extends StatelessWidget {
  final int quantity;
  final VoidCallback? onDecreasePressed;
  final VoidCallback? onAddPressed;

  const Quantity({
    Key? key,
    required this.quantity,
    required this.onDecreasePressed,
    required this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: CustomColor.borderColor),
      ),
      child: Row(
        children: [
          IncreaseDecreaseButton(onPressed: onDecreasePressed, icon: Icons.remove),
          const SizedBox(width: 5),
          QuantityText(quantity: quantity),
          const SizedBox(width: 5),
          IncreaseDecreaseButton(onPressed: onAddPressed, icon: Icons.add),
        ],
      ),
    );
  }
}
