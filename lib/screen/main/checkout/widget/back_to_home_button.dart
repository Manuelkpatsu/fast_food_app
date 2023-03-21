import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class BackToHomeButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const BackToHomeButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          height: 1.5,
        ),
        elevation: 0,
        foregroundColor: Colors.black,
        side: const BorderSide(color: CustomColor.primaryColor, width: 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        minimumSize: const Size(double.infinity, 60),
      ),
      child: const Text('Back to home'),
    );
  }
}
