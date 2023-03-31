import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final bool readOnly;
  final void Function()? onTap;

  const SearchTextField({
    Key? key,
    required this.controller,
    required this.onChanged,
    required this.readOnly,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextFormField(
        controller: controller,
        onTap: onTap,
        readOnly: readOnly,
        onChanged: onChanged,
        autofocus: false,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          isDense: true,
          prefixIcon: Icon(
            CupertinoIcons.search,
            size: 24,
            color: CustomColor.hintColor.withOpacity(0.4),
          ),
          hintText: 'Search your favorite food',
          hintStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: CustomColor.hintColor.withOpacity(0.4),
            height: 1.5,
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.5),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(color: Colors.black.withOpacity(0.3), width: 0.5),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: const BorderSide(color: CustomColor.primaryColor, width: 0.5),
          ),
        ),
      ),
    );
  }
}
