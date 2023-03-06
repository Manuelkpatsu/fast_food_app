import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AgreeTermsPolicy extends StatelessWidget {
  final bool isChecked;
  final void Function(bool?)? onChanged;
  final VoidCallback? onTermsTap;
  final VoidCallback? onPolicyTap;

  const AgreeTermsPolicy({
    Key? key,
    required this.isChecked,
    required this.onChanged,
    required this.onTermsTap,
    required this.onPolicyTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: onChanged,
          activeColor: CustomColor.checkBoxFillColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          side: const BorderSide(color: CustomColor.greyColor, width: 0.6),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: VisualDensity.compact,
        ),
        const SizedBox(width: 3),
        RichText(
          text: TextSpan(
            text: 'I agree to the ',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'Terms of Use',
                recognizer: TapGestureRecognizer()..onTap = onTermsTap,
                style: const TextStyle(
                  color: CustomColor.darkColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const TextSpan(text: ' and '),
              TextSpan(
                text: 'Privacy Policy',
                recognizer: TapGestureRecognizer()..onTap = onPolicyTap,
                style: const TextStyle(
                  color: CustomColor.darkColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
