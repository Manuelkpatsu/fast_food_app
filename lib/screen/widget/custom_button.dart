import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

import 'circular_button_loader.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final double? height;
  final double? width;
  final Widget widget;
  final double borderRadius;
  final bool isLoading;
  final FontWeight fontWeight;

  const CustomButton({
    Key? key,
    required this.onPressed,
    this.height = 60,
    this.width = double.infinity,
    required this.widget,
    this.borderRadius = 16,
    this.isLoading = false,
    this.fontWeight = FontWeight.w600,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColor.primaryColor,
        textStyle: TextStyle(
          fontSize: 16,
          fontWeight: fontWeight,
          height: 1.5,
        ),
        elevation: 0,
        foregroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        minimumSize: Size(width!, 60),
      ),
      child: isLoading ? const CircularButtonLoader() : widget,
    );
  }
}
