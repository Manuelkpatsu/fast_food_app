import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

class PopButton extends StatelessWidget {
  const PopButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => router.Router.pop(),
      borderRadius: BorderRadius.circular(10),
      child: Ink(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              offset: const Offset(0, -4),
              blurRadius: 54,
            ),
          ],
        ),
        child: const Icon(Icons.arrow_back_ios_rounded, color: Colors.black, size: 24),
      ),
    );
  }
}
