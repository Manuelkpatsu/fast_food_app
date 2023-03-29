import 'package:flutter/material.dart';

class FoodDetailThumbnail extends StatelessWidget {
  final String thumbnail;

  const FoodDetailThumbnail({Key? key, required this.thumbnail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      thumbnail,
      width: 290,
      height: 240,
      fit: BoxFit.contain,
    );
  }
}
