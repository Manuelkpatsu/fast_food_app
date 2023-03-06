import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class OtpMessageText extends StatelessWidget {
  final String email;

  const OtpMessageText({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'We have sent SMS to:',
        style: const TextStyle(
          color: CustomColor.greyColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
          height: 1.5,
        ),
        children: [
          TextSpan(
            text: '\n$email',
            style: const TextStyle(
              color: CustomColor.darkColor,
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
