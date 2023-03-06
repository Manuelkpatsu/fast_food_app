import 'package:flutter/material.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final VoidCallback? onTap;

  const AlreadyHaveAccount({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: InkWell(
        onTap: onTap,
        child: Text(
          'Already on makanskuy? Sign In',
          style: TextStyle(
            color: Colors.black.withOpacity(0.6),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
