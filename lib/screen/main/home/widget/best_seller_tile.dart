import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BestSellerTile extends StatelessWidget {
  final Food food;
  final VoidCallback? onTap;
  final VoidCallback? toggleFavorite;

  const BestSellerTile({
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
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: CustomColor.addressColor.withOpacity(0.05),
              offset: const Offset(0, 18),
              blurRadius: 48,
            ),
          ],
        ),
        child: Row(
          children: [
            Hero(
              tag: food.id,
              child: Image.asset(
                food.image,
                height: 95,
                width: 95,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        food.name,
                        maxLines: 1,
                        style: const TextStyle(
                          color: CustomColor.titleColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          height: 1.5,
                        ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '₵$formattedAmount',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          color: CustomColor.mediumDarkColor,
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.star_border_rounded,
                            size: 16,
                            color: Colors.black,
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
