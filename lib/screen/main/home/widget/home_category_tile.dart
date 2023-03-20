import 'package:fast_food_app/models/category.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class HomeCategoryTile extends StatelessWidget {
  final Category category;
  final VoidCallback? onTap;

  const HomeCategoryTile({
    Key? key,
    required this.category,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
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
            Image.asset(
              category.image,
              height: 40,
              width: 40,
              fit: BoxFit.contain,
            ),
            const SizedBox(width: 8),
            Text(
              category.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.5,
                color: CustomColor.blackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
