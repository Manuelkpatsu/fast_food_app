import 'package:flutter/material.dart';

class SocialLoginTile extends StatelessWidget {
  final VoidCallback? onPressed;
  final String image;

  const SocialLoginTile({
    Key? key,
    required this.onPressed,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        minimumSize: const Size(104, 48),
        elevation: 2,
      ),
      child: Image.asset(
        image,
        width: 40,
        height: 40,
        fit: BoxFit.contain,
      ),
    );
  }
}
