import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class SeeAllButton extends StatelessWidget {
  final VoidCallback onPressed;

  const SeeAllButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: CustomColor.hintColor,
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.5,
        )
      ),
      child: const Text('See All'),
    );
  }
}
