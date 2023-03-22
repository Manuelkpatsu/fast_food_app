import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderStatusInfo extends StatelessWidget {
  final OrderStatus orderStatus;
  final VoidCallback onTap;
  final DateTime dateTime;

  const OrderStatusInfo({
    Key? key,
    required this.orderStatus,
    required this.onTap,
    required this.dateTime,
  }) : super(key: key);

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

    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Ink(
        padding: const EdgeInsets.all(20),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderStatusText(),
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: CustomColor.darkColor,
                    height: 1.5,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  DateFormat('hh:mm a').format(dateTime),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: CustomColor.greyColor,
                    height: 1.36,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 16,
              color: CustomColor.greyColor,
            )
          ],
        ),
      ),
    );
  }
}
