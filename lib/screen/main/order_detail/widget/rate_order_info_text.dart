import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RateOrderInfoText extends StatelessWidget {
  const RateOrderInfoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rate your completed order by pressing the star below.',
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.35,
        color: CustomColor.greyColor,
      ),
    );
  }
}
