import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/screen/widget/empty_state.dart';
import 'package:flutter/material.dart';

import 'widget/order_tile.dart';

class OngoingOrders extends StatelessWidget {
  final List<Order> orders;

  const OngoingOrders({Key? key, required this.orders}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return orders.isEmpty
        ? const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: EmptyState(message: 'Sorry, there are no ongoing orders.'),
          )
        : ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            itemCount: orders.length,
            itemBuilder: (ctx, index) {
              final order = orders[index];

              return OrderTile(order: order, onPressed: () {});
            },
          );
  }
}
