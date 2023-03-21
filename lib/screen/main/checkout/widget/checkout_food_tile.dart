import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/screen/widget/food_amount_text.dart';
import 'package:fast_food_app/screen/widget/food_name.dart';
import 'package:fast_food_app/screen/widget/food_thumbnail.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'category_name_text.dart';

class CheckoutFoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onPressed;
  final VoidCallback? toggleFavorite;

  const CheckoutFoodTile({
    Key? key,
    required this.food,
    required this.onPressed,
    required this.toggleFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
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
                        CategoryNameText(category: food.categories.first.name),
                        FoodAmountText(amount: food.price * food.quantity),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
