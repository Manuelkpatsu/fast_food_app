import 'package:flutter/material.dart';

import 'nav_icon.dart';
import 'nav_sub_title_text.dart';
import 'nav_title_text.dart';

class NavTile extends StatelessWidget {
  final VoidCallback onTap;
  final String icon;
  final String title;
  final String subTitle;

  const NavTile({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Ink(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
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
        child: Row(
          children: [
            NavIcon(icon: icon),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NavTitleText(title: title),
                  const SizedBox(height: 6),
                  NavSubTitleText(subTitle: subTitle),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Image.asset(
              'assets/images/arrow-right.png',
              height: 24,
              width: 24,
              fit: BoxFit.contain,
            )
          ],
        ),
      ),
    );
  }
}
