import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class FoodDetailRating extends StatelessWidget {
  final double rating;
  
  const FoodDetailRating({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star_outline_rounded,
          color: CustomColor.yellowColor,
          size: 24,
        ),
        const SizedBox(width: 5),
        Text(
          rating.toString(),
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: CustomColor.titleColor,
          ),
        )
      ],
    );
  }
}
