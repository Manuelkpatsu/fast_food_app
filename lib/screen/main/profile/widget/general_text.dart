import 'package:flutter/material.dart';

class GeneralText extends StatelessWidget {
  const GeneralText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: Text(
        'General',
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.w700,
          height: 1.31,
        ),
      ),
    );
  }
}
