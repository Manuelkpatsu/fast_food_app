import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class NavTitleText extends StatelessWidget {
  final String title;

  const NavTitleText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        height: 1.5,
        color: CustomColor.navbarColor,
      ),
    );
  }
}
