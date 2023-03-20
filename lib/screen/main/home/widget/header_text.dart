import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  final String title;

  const HeaderText({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.5,
        color: CustomColor.blackColor,
      ),
    );
  }
}
