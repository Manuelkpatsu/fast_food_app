import 'package:fast_food_app/models/payment_method.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'widget/payment_method_tile.dart';

class PaymentMethodScreen extends StatefulWidget {
  static const routeName = '/payment_method';

  const PaymentMethodScreen({Key? key}) : super(key: key);

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  final List<PaymentMethod> _paymentMethods = const [
    PaymentMethod(id: 1, name: 'Case Card', image: 'assets/images/payments/case-card.png'),
    PaymentMethod(id: 2, name: 'Mayarpal', image: 'assets/images/payments/mayarpal.png'),
  ];
  int _selectedPaymentMethod = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Payment Method'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: _paymentMethods.length,
                itemBuilder: (ctx, index) {
                  final paymentMethod = _paymentMethods[index];

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
                },
              ),
            ),
            CustomButton(
              onPressed: () {},
              widget: const Text('Add Payment Method'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
