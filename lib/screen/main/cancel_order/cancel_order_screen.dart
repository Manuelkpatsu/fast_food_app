import 'package:fast_food_app/models/cancel_order_reason.dart';
import 'package:fast_food_app/screen/main/app.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/reason_tile.dart';

class CancelOrderScreen extends StatefulWidget {
  static const routeName = '/cancel_order';

  const CancelOrderScreen({Key? key}) : super(key: key);

  @override
  State<CancelOrderScreen> createState() => _CancelOrderScreenState();
}

class _CancelOrderScreenState extends State<CancelOrderScreen> {
  final List<CancelOrderReason> _reasons = [
    const CancelOrderReason(id: 1, name: 'Want to change order'),
    const CancelOrderReason(id: 2, name: 'Change amount of order'),
    const CancelOrderReason(id: 3, name: 'Not  interesting'),
    const CancelOrderReason(id: 4, name: 'Change payment method'),
  ];
  int? _selectedReason;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const AppBarTitle(title: 'Cancel Order'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: _reasons.length,
                itemBuilder: (ctx, index) {
                  CancelOrderReason reason = _reasons[index];

                  return ReasonTile(
                    reason: reason,
                    onChanged: (value) {
                      setState(() {
                        _selectedReason = value as int;
                      });
                    },
                    value: reason.id,
                    groupValue: _selectedReason,
                  );
                },
              ),
            ),
            CustomButton(
              onPressed: () {
                router.Router.pushNamedAndRemoveUntil(MainApp.routeName);
              },
              widget: const Text('Submit'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
