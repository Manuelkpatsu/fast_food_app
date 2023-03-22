import 'package:fast_food_app/models/address.dart';
import 'package:fast_food_app/models/food.dart';
import 'package:fast_food_app/models/order.dart';
import 'package:fast_food_app/models/payment_method.dart';
import 'package:fast_food_app/screen/main/app.dart';
import 'package:fast_food_app/screen/main/order_detail/order_detail_screen.dart';
import 'package:fast_food_app/screen/main/profile/addresses/widget/address_tile.dart';
import 'package:fast_food_app/screen/main/profile/payment_method/widget/payment_method_tile.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/selected_item_tile.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/address_text.dart';
import 'widget/back_to_home_button.dart';
import 'widget/change_address_button.dart';
import 'widget/checkout_food_tile.dart';
import 'widget/note_text.dart';
import 'widget/order_detail_text.dart';
import 'widget/payment_confirmation_text.dart';
import 'widget/payment_method_text.dart';
import '../../widget/selected_item_text.dart';
import '../../widget/total_amount_text.dart';
import '../../widget/total_text.dart';

class CheckoutScreen extends StatefulWidget {
  static const routeName = '/checkout';

  final List<Food> argument;

  const CheckoutScreen({Key? key, required this.argument}) : super(key: key);

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final TextEditingController _noteController = TextEditingController();
  final List<PaymentMethod> _paymentMethods = const [
    PaymentMethod(id: 1, name: 'Case Card', image: 'assets/images/payments/case-card.png'),
    PaymentMethod(id: 2, name: 'Mayarpal', image: 'assets/images/payments/mayarpal.png'),
  ];
  int _selectedPaymentMethod = 1;
  final Address _address = const Address(
    id: 1,
    label: 'Home',
    phoneNumber: '(62) 123-456',
    streetAddress: 'Street: 18 Sun City, Cibadak',
  );

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final totalAmount = widget.argument
        .fold(0.0, (previous, current) => previous + (current.quantity * current.price));

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Checkout'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const OrderDetailText(),
            const SizedBox(height: 16),
            Column(
              children: widget.argument.map((food) {
                return CheckoutFoodTile(
                  food: food,
                  toggleFavorite: () {},
                  onPressed: () {},
                );
              }).toList(),
            ),
            const SizedBox(height: 8),
            const AddressText(),
            const SizedBox(height: 16),
            AddressTile(
              value: _address,
              groupValue: _address,
              onChanged: (value) {},
              address: _address,
            ),
            ChangeAddressButton(onTap: () {}),
            const SizedBox(height: 16),
            const NoteText(),
            const SizedBox(height: 16),
            TextInputField(
              controller: _noteController,
              hintText: 'Add any extra information',
              inputType: TextInputType.multiline,
              textCapitalization: TextCapitalization.sentences,
              inputAction: TextInputAction.done,
              maxLines: 4,
            ),
            const SizedBox(height: 24),
            const PaymentMethodText(),
            const SizedBox(height: 16),
            Column(
              children: _paymentMethods.map((paymentMethod) {
                return PaymentMethodTile(
                  value: paymentMethod.id,
                  groupValue: _selectedPaymentMethod,
                  onChanged: (value) {
                    setState(() {
                      _selectedPaymentMethod = value as int;
                    });
                  },
                  paymentMethod: paymentMethod,
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            const SelectedItemText(),
            Column(
              children: widget.argument.map((food) {
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
              onPressed: openPaymentConfirmationDialog,
              widget: const Text('Pay Now'),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }

  void openPaymentConfirmationDialog() {
    showDialog(
      context: context,
      barrierColor: CustomColor.barrierColor.withOpacity(0.4),
      builder: (ctx) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(24),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          backgroundColor: Colors.white,
          content: IntrinsicHeight(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/success.png',
                  width: 95,
                  height: 95,
                  fit: BoxFit.contain,
                ),
                const PaymentConfirmationText(),
                const SizedBox(height: 50),
                CustomButton(
                  onPressed: () {
                    router.Router.pop();
                    router.Router.pushNamed(
                      OrderDetailScreen.routeName,
                      args: Order(
                        id: 1,
                        foods: widget.argument,
                        orderStatus: OrderStatus.received,
                        paymentMethod: _paymentMethods
                            .where((paymentMethod) => paymentMethod.id == _selectedPaymentMethod)
                            .first,
                        address: _address,
                        note: _noteController.text.trim(),
                      ),
                    );
                  },
                  widget: const Text('Check Order Status'),
                ),
                const SizedBox(height: 16),
                BackToHomeButton(
                  onPressed: () {
                    router.Router.pop();
                    router.Router.pushNamedAndRemoveUntil(MainApp.routeName);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
