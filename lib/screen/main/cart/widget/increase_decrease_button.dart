import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class IncreaseDecreaseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final double iconSpacing;

  const IncreaseDecreaseButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.iconSpacing = 18,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: iconSpacing,
            height: iconSpacing,
            child: Icon(
              icon,
              size: 14,
              color: onPressed == null ? CustomColor.disabledIconColor : CustomColor.titleColor,
            ),
          ),
        ),
      ),
    );
  }
}
