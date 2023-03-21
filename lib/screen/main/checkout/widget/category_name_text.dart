import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class CategoryNameText extends StatelessWidget {
  final String category;

  const CategoryNameText({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      category,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.5,
        color: CustomColor.titleColor.withOpacity(0.6)
      ),
    );
  }
}
