import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantityText extends StatelessWidget {
  final int quantity;

  const QuantityText({Key? key, required this.quantity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      quantity.toString(),
      style: GoogleFonts.dmSans(
        color: CustomColor.titleColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
