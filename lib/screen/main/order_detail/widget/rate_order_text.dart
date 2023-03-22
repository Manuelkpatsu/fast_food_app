import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RateOrderText extends StatelessWidget {
  const RateOrderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rate the Order',
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 1.38,
        color: CustomColor.darkColor,
      ),
    );
  }
}
