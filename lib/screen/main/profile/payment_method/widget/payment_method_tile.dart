import 'package:fast_food_app/models/payment_method.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class PaymentMethodTile extends StatelessWidget {
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;
  final PaymentMethod paymentMethod;

  const PaymentMethodTile({
    Key? key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.paymentMethod,
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
          controlAffinity: ListTileControlAffinity.trailing,
          contentPadding: const EdgeInsets.all(10),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          title: Row(
            children: [
              Image.asset(
                paymentMethod.image,
                height: 20,
                width: 29,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 12),
              Text(
                paymentMethod.name,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                  color: CustomColor.titleColor,
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
