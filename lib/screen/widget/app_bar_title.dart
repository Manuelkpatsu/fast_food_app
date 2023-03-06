import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  final String title;

  const AppBarTitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: CustomColor.darkColor,
        height: 1.5,
      ),
    );
  }
}
