import 'package:flutter/material.dart';

class OrLoginWithText extends StatelessWidget {
  const OrLoginWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Or login with',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          height: 1.5,
          fontWeight: FontWeight.w500,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
