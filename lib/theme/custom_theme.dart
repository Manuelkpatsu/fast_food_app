import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_color.dart';

class CustomTheme {
  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: CustomColor.scaffoldBackgroundColor,
      primaryColor: CustomColor.primaryColor,
      canvasColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: CustomColor.scaffoldBackgroundColor,
        iconTheme: IconThemeData(color: CustomColor.titleColor),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      textTheme: GoogleFonts.poppinsTextTheme(),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: CustomColor.primaryColor,
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
          elevation: 0,
          foregroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
          minimumSize: const Size.fromHeight(60),
        ),
      ),
    );
  }
}
