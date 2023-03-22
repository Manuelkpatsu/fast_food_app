import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/screen/main/profile/addresses/widget/address_tile.dart';
import 'package:fast_food_app/screen/main/profile/payment_method/widget/payment_method_tile.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/selected_item_text.dart';
import 'package:fast_food_app/screen/widget/selected_item_tile.dart';
import 'package:fast_food_app/screen/widget/total_amount_text.dart';
import 'package:fast_food_app/screen/widget/total_text.dart';
import 'package:flutter/material.dart';

import 'widget/additional_note_text.dart';
import 'widget/customised_outlined_button.dart';
import 'widget/note_text.dart';
import 'widget/order_detail_food_tile.dart';
import 'widget/order_status_info.dart';
import 'widget/order_status_text.dart';
import 'widget/order_summary_text.dart';
import 'widget/payment_method_text.dart';
import 'widget/shipping_address_text.dart';

class OrderDetailScreen extends StatelessWidget {
  final Order argument;

  static const routeName = '/order_detail';

  const OrderDetailScreen({Key? key, required this.argument}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final totalAmount = argument.foods
        .fold(0.0, (previous, current) => previous + (current.quantity * current.price));
    String buttonText() {
      switch (argument.orderStatus) {
        case OrderStatus.received:
        case OrderStatus.confirmed:
        case OrderStatus.onDelivery:
          return 'Cancel Order';
        case OrderStatus.completed:
          return 'Order Done';
      }
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Order Detail'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const OrderStatusText(),
            const SizedBox(height: 12),
            OrderStatusInfo(
              onTap: () {},
              orderStatus: argument.orderStatus,
              dateTime: DateTime(2023, 03, 22, 09, 50),
            ),
            const SizedBox(height: 24),
            const OrderSummaryText(),
            const SizedBox(height: 16),
            Column(
              children: argument.foods.map((food) {
                return OrderDetailFoodTile(
                  food: food,
                  toggleFavorite: () {},
                  onPressed: () {},
                );
              }).toList(),
            ),
            const SizedBox(height: 8),
            const ShippingAddressText(),
            const SizedBox(height: 16),
            AddressTile(
              value: argument.address,
              groupValue: argument.address,
              onChanged: (value) {},
              address: argument.address,
            ),
            const SizedBox(height: 8),
            argument.note.isEmpty ? const SizedBox.shrink() : const NoteText(),
            argument.note.isEmpty ? const SizedBox.shrink() : const SizedBox(height: 16),
            argument.note.isEmpty
                ? const SizedBox.shrink()
                : AdditionalNoteText(note: argument.note),
            argument.note.isEmpty ? const SizedBox.shrink() : const SizedBox(height: 24),
            const PaymentMethodText(),
            const SizedBox(height: 16),
            PaymentMethodTile(
              value: argument.paymentMethod,
              groupValue: argument.paymentMethod,
              onChanged: (value) {},
              paymentMethod: argument.paymentMethod,
            ),
            const SizedBox(height: 8),
            const SelectedItemText(),
            Column(
              children: argument.foods.map((food) {
                return SelectedItemTile(food: food);
              }).toList(),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const TotalText(),
                TotalAmountText(amount: totalAmount),
              ],
            ),
            const SizedBox(height: 30),
            CustomButton(
              onPressed: () {},
              widget: Text(buttonText()),
            ),
            const SizedBox(height: 16),
            CustomisedOutlinedButton(
              onPressed: () {},
              orderStatus: argument.orderStatus,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
