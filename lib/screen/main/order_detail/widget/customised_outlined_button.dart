import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class CustomisedOutlinedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final OrderStatus orderStatus;

  const CustomisedOutlinedButton({
    Key? key,
    required this.onPressed,
    required this.orderStatus,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String buttonText() {
      switch (orderStatus) {
        case OrderStatus.received:
        case OrderStatus.confirmed:
        case OrderStatus.onDelivery:
          return 'Chat Seller';
        case OrderStatus.completed:
          return 'Rate';
      }
    }

    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          height: 1.5,
        ),
        elevation: 0,
        foregroundColor: Colors.black.withOpacity(0.5),
        side: const BorderSide(color: CustomColor.primaryColor, width: 1),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        minimumSize: const Size(double.infinity, 60),
      ),
      child: Text(buttonText()),
    );
  }
}
