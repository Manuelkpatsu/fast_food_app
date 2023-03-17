import 'package:fast_food_app/models/address.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:flutter/material.dart';

import 'widget/address_tile.dart';

class AddressesScreen extends StatefulWidget {
  static const routeName = '/addresses';

  const AddressesScreen({Key? key}) : super(key: key);

  @override
  State<AddressesScreen> createState() => _AddressesScreenState();
}

class _AddressesScreenState extends State<AddressesScreen> {
  final List<Address> _addresses = const [
    Address(
      id: 1,
      label: 'Home',
      phoneNumber: '(62) 123-456',
      streetAddress: 'Street: 18 Sun City, Cibadak',
    ),
    Address(
      id: 2,
      label: 'Office',
      phoneNumber: '(62) 133-412',
      streetAddress: 'Street: 7 Salak Mount, Parakansalak',
    ),
  ];
  int _selectedAddress = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'My Address'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(vertical: 20),
                itemCount: _addresses.length,
                itemBuilder: (ctx, index) {
                  final address = _addresses[index];

                  return AddressTile(
                    value: address.id,
                    groupValue: _selectedAddress,
                    onChanged: (value) {
                      setState(() {
                        _selectedAddress = value as int;
                      });
                    },
                    address: address,
                  );
                },
              ),
            ),
            CustomButton(
              onPressed: () {},
              widget: const Text('Add Address'),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
