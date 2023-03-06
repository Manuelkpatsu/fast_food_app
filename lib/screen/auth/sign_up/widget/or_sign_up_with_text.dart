import 'package:flutter/material.dart';

class OrSignUpWithText extends StatelessWidget {
  const OrSignUpWithText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Text(
        'Or sign up with',
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
