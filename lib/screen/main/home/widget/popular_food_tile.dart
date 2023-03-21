import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PopularFoodTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onTap;
  final VoidCallback? toggleFavorite;

  const PopularFoodTile({
    Key? key,
    required this.food,
    required this.onTap,
    required this.toggleFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final formattedAmount = food.price != 0
        ? NumberFormat("###,###.00").format(food.price)
        : food.price.toStringAsFixed(2);

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18),
      child: Ink(
        width: 155,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            BoxShadow(
              color: CustomColor.addressColor.withOpacity(0.05),
              offset: const Offset(0, 18),
              blurRadius: 48,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star_border_rounded,
                      size: 16,
                      color: CustomColor.yellowColor,
                    ),
                    Text(
                      food.rating.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  splashRadius: 20,
                  onPressed: toggleFavorite,
                  icon: Image.asset(
                    'assets/images/heart.png',
                    width: 24,
                    height: 24,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 3),
            Hero(
              tag: food.name,
              child: Image.asset(
                food.image,
                height: 107,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 4),
            Align(
              alignment: Alignment.center,
              child: Text(
                food.name,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: CustomColor.titleColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  height: 1.5,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                '₵$formattedAmount',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: CustomColor.mediumDarkColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
