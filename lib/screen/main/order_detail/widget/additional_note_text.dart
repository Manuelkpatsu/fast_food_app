import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class AdditionalNoteText extends StatelessWidget {
  final String note;

  const AdditionalNoteText({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: CustomColor.textFieldBorderColor.withOpacity(0.5),
          width: 1,
        ),
      ),
      child: Text(
        note,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Colors.black.withOpacity(0.4),
          height: 1.5,
        ),
      ),
    );
  }
}
