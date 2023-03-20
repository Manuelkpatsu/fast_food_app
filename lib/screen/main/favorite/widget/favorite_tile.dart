import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FavoriteTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onPressed;
  final VoidCallback? toggleFavorite;

  const FavoriteTile({
    Key? key,
    required this.food,
    required this.onPressed,
    required this.toggleFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount = food.price != 0
        ? NumberFormat("###,###.00").format(food.price)
        : food.price.toStringAsFixed(2);

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(16),
      child: Ink(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, -4),
              blurRadius: 54,
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Hero(
                  tag: food.id,
                  child: Image.asset(
                    food.image,
                    height: 98,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  food.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.titleColor,
                    height: 1.5,
                  ),
                ),
                Text(
                  '₵$formattedAmount',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColor.mediumDarkColor,
                    height: 1.5,
                  ),
                ),
              ],
            ),
            Positioned(
              top: -10,
              right: -10,
              child: IconButton(
                splashRadius: 20,
                onPressed: toggleFavorite,
                icon: Image.asset(
                  'assets/images/bold-heart.png',
                  width: 24,
                  height: 24,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
