import 'package:fast_food_app/models/order.dart';
import 'package:flutter/material.dart';

import 'order_items_quantity_text.dart';
import 'order_name_text.dart';
import 'order_status_text.dart';
import 'order_thumbnail.dart';
import 'order_total_amount_text.dart';

class OrderTile extends StatelessWidget {
  final Order order;
  final VoidCallback? onPressed;

  const OrderTile({Key? key, required this.order, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantity = order.foods.fold(0, (previous, current) => previous + current.quantity);
    final totalAmount =
        order.foods.fold(0.0, (previous, current) => previous + (current.quantity * current.price));

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(12),
        child: Ink(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                offset: const Offset(0, -4),
                blurRadius: 54,
              ),
            ],
          ),
          child: Row(
            children: [
              OrderThumbnail(thumbnail: order.foods.first.image),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OrderNameText(name: order.foods.first.name),
                        OrderItemsQuantityText(quantity: quantity),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OrderStatusText(orderStatus: order.orderStatus),
                        OrderTotalAmountText(amount: totalAmount),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
