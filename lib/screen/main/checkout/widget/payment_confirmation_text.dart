import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class PaymentConfirmationText extends StatelessWidget {
  const PaymentConfirmationText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Your payment has been confirmed. you can check the details for departure.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: CustomColor.hintColor.withOpacity(0.5),
        height: 1.78,
      ),
    );
  }
}
