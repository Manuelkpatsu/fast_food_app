import 'package:flutter/material.dart';

class ToppingTile extends StatelessWidget {
  final String thumbnail;

  const ToppingTile({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(0, -4),
            blurRadius: 54,
          ),
        ],
      ),
      child: Image.asset(
        thumbnail,
        height: 40,
        width: 40,
        fit: BoxFit.contain,
      ),
    );
  }
}
