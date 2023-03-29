import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import '../../../widget/food_amount_text.dart';
import '../../../widget/food_name.dart';
import '../../../widget/food_thumbnail.dart';
import 'quantity.dart';

class CartTile extends StatelessWidget {
  final Food food;
  final VoidCallback? toggleFavorite;
  final VoidCallback? onDecreasePressed;
  final VoidCallback? onAddPressed;

  const CartTile({
    Key? key,
    required this.food,
    required this.toggleFavorite,
    required this.onDecreasePressed,
    required this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, -4),
            blurRadius: 54,
          ),
        ],
      ),
      child: Row(
        children: [
          FoodThumbnail(thumbnail: food.image),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FoodName(name: food.name),
                    IconButton(
                      splashRadius: 20,
                      onPressed: toggleFavorite,
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 20,
                        color: CustomColor.iconColor,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Quantity(
                      quantity: food.quantity,
                      onDecreasePressed: onDecreasePressed,
                      onAddPressed: onAddPressed,
                    ),
                    FoodAmountText(amount: food.price * food.quantity),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
