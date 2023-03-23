import 'package:fast_food_app/models/address.dart';
import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/models/order_state.dart';
import 'package:fast_food_app/screen/main/profile/addresses/widget/address_tile.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

import 'widget/order_status_tile.dart';
import 'widget/shipping_address_text.dart';

class OrderStatusScreen extends StatelessWidget {
  static const routeName = '/order_status';

  final Address argument;

  const OrderStatusScreen({Key? key, required this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<OrderState> orderStates = [
      const OrderState(
        orderStatus: OrderStatus.completed,
        completed: false,
        date: null,
      ),
      const OrderState(
        orderStatus: OrderStatus.onDelivery,
        completed: false,
        date: null,
      ),
      const OrderState(
        orderStatus: OrderStatus.confirmed,
        completed: false,
        date: null,
      ),
      OrderState(
        orderStatus: OrderStatus.received,
        completed: true,
        date: DateTime(2023, 03, 22, 13, 10),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Order Status'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const ShippingAddressText(),
            const SizedBox(height: 16),
            AddressTile(
              value: argument,
              groupValue: argument,
              onChanged: (value) {},
              address: argument,
            ),
            const SizedBox(height: 24),
            FixedTimeline.tileBuilder(
              theme: TimelineThemeData(
                nodePosition: 0,
                indicatorTheme: const IndicatorThemeData(position: 0.25),
              ),
              builder: TimelineTileBuilder.connected(
                connectionDirection: ConnectionDirection.before,
                itemCount: orderStates.length,
                contentsBuilder: (_, index) {
                  OrderState orderState = orderStates[index];

                  return OrderStatusTile(orderState: orderState);
                },
                indicatorBuilder: (_, index) {
                  if (orderStates[index].completed) {
                    return const DotIndicator(
                      size: 44,
                      color: CustomColor.primaryColor,
                      child: Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 16,
                      ),
                    );
                  } else {
                    return DotIndicator(
                      size: 44,
                      color: Colors.black.withOpacity(0.1),
                      child: Icon(
                        Icons.check,
                        color: CustomColor.darkColor.withOpacity(0.7),
                        size: 16,
                      ),
                    );
                  }
                },
                connectorBuilder: (_, index, ___) {
                  if (orderStates[index].completed) {
                    return DashedLineConnector(
                      color: Colors.black.withOpacity(0.3),
                      thickness: 1.5,
                      gap: 4.0,
                    );
                  } else {
                    return null;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
