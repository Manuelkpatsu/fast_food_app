import 'package:flutter/material.dart';

class ForgotPasswordButton extends StatelessWidget {
  final VoidCallback? onTap;

  const ForgotPasswordButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: InkWell(
        splashColor: Colors.black.withOpacity(0.1),
        highlightColor: Colors.black.withOpacity(0.1),
        onTap: onTap,
        child: Text(
          'Forgot Password?',
          style: TextStyle(
            fontSize: 14,
            height: 1.5,
            fontWeight: FontWeight.w600,
            color: Colors.black.withOpacity(0.5),
          ),
        ),
      ),
    );
  }
}
