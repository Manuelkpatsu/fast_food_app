import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class IncreaseDecreaseButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;

  const IncreaseDecreaseButton({
    Key? key,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Material(
        child: InkWell(
          onTap: () {},
          child: SizedBox(
            width: 18,
            height: 18,
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
