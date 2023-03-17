import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  final String message;

  const EmptyState({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: CustomColor.titleColor,
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
      ),
    );
  }
}
