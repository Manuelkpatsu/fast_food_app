import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/models/order_state.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderStatusTile extends StatelessWidget {
  final OrderState orderState;

  const OrderStatusTile({Key? key, required this.orderState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String orderStatusText() {
      switch (orderState.orderStatus) {
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

    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 30),
      child: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, -4),
              blurRadius: 54,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              orderStatusText(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                height: 1.5,
              ),
            ),
            orderState.date == null ? const SizedBox.shrink() : const SizedBox(height: 4),
            orderState.date == null
                ? const SizedBox.shrink()
                : Text(
                    DateFormat('h:mm a').format(orderState.date!),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withOpacity(0.5),
                      height: 1.5,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
