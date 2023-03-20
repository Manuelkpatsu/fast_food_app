import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'cart_item_amount_text.dart';
import 'cart_item_name.dart';
import 'cart_item_thumbnail.dart';
import 'quantity.dart';

class CartTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onPressed;
  final VoidCallback? toggleFavorite;
  final VoidCallback? onDecreasePressed;
  final VoidCallback? onAddPressed;

  const CartTile({
    Key? key,
    required this.food,
    required this.onPressed,
    required this.toggleFavorite,
    required this.onDecreasePressed,
    required this.onAddPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(12),
      child: Ink(
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
            CartItemThumbnail(thumbnail: food.image, id: food.id),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CartItemName(name: food.name),
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
                      CartItemAmountText(amount: food.price * food.quantity),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
