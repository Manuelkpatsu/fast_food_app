import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class NavSubTitleText extends StatelessWidget {
  final String subTitle;

  const NavSubTitleText({Key? key, required this.subTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.5,
        color: CustomColor.navbarColor.withOpacity(0.6),
      ),
    );
  }
}
