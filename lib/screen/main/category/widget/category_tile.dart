import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class CategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback onTap;

  const CategoryTile({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, -4),
              blurRadius: 54,
            ),
          ],
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Image.asset(
              category.image,
              width: MediaQuery.of(context).size.width,
              height: 90,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 10),
            Text(
              category.name,
              style: const TextStyle(
                color: CustomColor.titleColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
