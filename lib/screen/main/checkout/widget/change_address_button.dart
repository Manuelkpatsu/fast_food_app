import 'package:flutter/material.dart';

class ChangeAddressButton extends StatelessWidget {
  final VoidCallback onTap;

  const ChangeAddressButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        onTap: onTap,
        child: Text(
          'Change Address',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1.5,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
