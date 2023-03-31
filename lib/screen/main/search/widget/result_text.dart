import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  final String query;

  const ResultText({Key? key, required this.query}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Text(
        'Result for: $query',
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
          height: 1.5,
          color: CustomColor.blackColor,
        ),
      ),
    );
  }
}
