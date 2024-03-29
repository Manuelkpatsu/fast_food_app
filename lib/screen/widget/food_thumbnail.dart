import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class FoodThumbnail extends StatelessWidget {
  final String thumbnail;

  const FoodThumbnail({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        color: CustomColor.widgetBackgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Image.asset(
        thumbnail,
        height: 64,
        width: 64,
        fit: BoxFit.contain,
      ),
    );
  }
}
