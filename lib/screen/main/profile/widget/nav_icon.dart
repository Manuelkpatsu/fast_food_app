import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final String icon;

  const NavIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: CustomColor.iconBackgroundColor,
      ),
      alignment: Alignment.center,
      child: Image.asset(
        icon,
        height: 24,
        width: 24,
        fit: BoxFit.contain,
      ),
    );
  }
}
