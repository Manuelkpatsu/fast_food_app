import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class HelloText extends StatelessWidget {
  final String name;

  const HelloText({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Hello $name!',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.blackColor,
      ),
    );
  }
}
