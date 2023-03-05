import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomGradient {
  const CustomGradient._();

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: const [0, 1.0],
    colors: [
      CustomColor.gradientColor.withOpacity(0.0),
      CustomColor.gradientColor.withOpacity(0.46),
    ],
  );
}
