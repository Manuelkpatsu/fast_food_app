import 'package:flutter/material.dart';

import 'custom_color.dart';

class CustomGradient {
  const CustomGradient._();

  static LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0, 0.46],
    colors: [
      CustomColor.gradientColor.withOpacity(0.0),
      CustomColor.gradientColor.withOpacity(0.46),
    ],
  );
}
