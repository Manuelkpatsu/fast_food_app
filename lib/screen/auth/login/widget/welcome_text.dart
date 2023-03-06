import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome',
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        height: 1.5,
      ),
    );
  }
}
