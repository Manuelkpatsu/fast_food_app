import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

class FoodDetailDescription extends StatelessWidget {
  final String description;

  const FoodDetailDescription({Key? key, required this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ReadMoreText(
        description,
        colorClickableText: CustomColor.primaryColor,
        trimMode: TrimMode.Line,
        trimLines: 3,
        trimCollapsedText: 'Read more',
        trimExpandedText: 'Show less',
        style: GoogleFonts.dmSans(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
