import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FreeShipping extends StatelessWidget {
  const FreeShipping({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/icon-check.png',
          width: 16,
          height: 16,
          fit: BoxFit.contain,
        ),
        const SizedBox(width: 8),
        Text(
          'Free Shipping',
          style: GoogleFonts.dmSans(
            color: CustomColor.titleColor,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            height: 1.31,
          ),
        )
      ],
    );
  }
}
