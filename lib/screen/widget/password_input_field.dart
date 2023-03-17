import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class PasswordInputField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType? inputType;
  final TextInputAction? inputAction;
  final FormFieldValidator<String>? validator;
  final TextCapitalization textCapitalization;
  final String hintText;
  final void Function(String)? onChanged;
  final bool? isDense;
  final EdgeInsetsGeometry? contentPadding;
  final double borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? fillColor;

  const PasswordInputField({
    Key? key,
    required this.controller,
    this.inputType,
    this.inputAction,
    this.validator,
    required this.hintText,
    this.textCapitalization = TextCapitalization.none,
    this.onChanged,
    this.isDense,
    this.contentPadding,
    this.borderRadius = 16,
    this.prefixIcon,
    this.suffixIcon,
    this.fillColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      obscureText: true,
      cursorColor: Colors.black.withOpacity(0.3),
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Colors.black,
        height: 1.5,
      ),
      decoration: InputDecoration(
        contentPadding: contentPadding,
        isDense: isDense,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.5),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: const BorderSide(color: CustomColor.primaryColor, width: 0.5),
        ),
        filled: true,
        fillColor: fillColor ?? Colors.white,
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.3),
          height: 1.5,
        ),
        errorStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: CustomColor.primaryColor,
          height: 1.5,
        ),
      ),
      obscuringCharacter: '*',
      keyboardType: inputType,
      textInputAction: inputAction,
      validator: validator,
      textCapitalization: textCapitalization,
    );
  }
}
