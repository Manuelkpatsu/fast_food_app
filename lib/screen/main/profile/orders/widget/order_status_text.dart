import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class OrderStatusText extends StatelessWidget {
  final OrderStatus orderStatus;

  const OrderStatusText({Key? key, required this.orderStatus}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String orderStatusText() {
      switch (orderStatus) {
        case OrderStatus.received:
          return 'Received';
        case OrderStatus.confirmed:
          return 'Confirmed';
        case OrderStatus.onDelivery:
          return 'On Delivery';
        case OrderStatus.completed:
          return 'Completed';
      }
    }

    return Text(
      orderStatusText(),
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.titleColor.withOpacity(0.6),
      ),
    );
  }
}
