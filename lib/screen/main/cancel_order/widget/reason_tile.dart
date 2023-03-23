import 'package:fast_food_app/models/cancel_order_reason.dart';
import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ReasonTile extends StatelessWidget {
  final CancelOrderReason reason;
  final Object value;
  final Object? groupValue;
  final void Function(Object?)? onChanged;

  const ReasonTile({
    Key? key,
    required this.reason,
    required this.value,
    required this.groupValue,
    required this.onChanged,
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
            borderRadius: BorderRadius.circular(16),
            side: BorderSide(color: Colors.black.withOpacity(0.05), width: 1),
          ),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: const EdgeInsets.all(10),
          value: value,
          groupValue: groupValue,
          onChanged: onChanged,
          title: Text(
            reason.name,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 1.5,
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          activeColor: CustomColor.primaryColor,
          dense: true,
          visualDensity: const VisualDensity(horizontal: VisualDensity.minimumDensity),
        ),
      ),
    );
  }
}
