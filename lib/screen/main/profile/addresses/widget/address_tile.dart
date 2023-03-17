import 'package:fast_food_app/models/address.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class AddressTile extends StatelessWidget {
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;
  final Address address;

  const AddressTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Theme(
        data: Theme.of(context).copyWith(
          unselectedWidgetColor: CustomColor.radioButtonColor.withOpacity(0.5),
        ),
        child: RadioListTile(
          tileColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: Colors.black.withOpacity(0.05), width: 1)
          ),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: const EdgeInsets.all(10),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    address.label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                      color: CustomColor.addressColor,
                    ),
                  ),
                  IconButton(
                    splashRadius: 20,
                    onPressed: () {},
                    icon: Image.asset(
                      'assets/images/edit.png',
                      height: 24,
                      width: 24,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Text(
                address.phoneNumber,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: CustomColor.addressColor.withOpacity(0.5),
                ),
              ),
              Text(
                address.streetAddress,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.5,
                  color: CustomColor.addressColor.withOpacity(0.5),
                ),
              ),
            ],
          ),
          activeColor: CustomColor.primaryColor,
          dense: true,
          visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity),
        ),
      ),
    );
  }
}
