import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';

class ImagePickerButton extends StatelessWidget {
  final VoidCallback? onPressed;

  const ImagePickerButton({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -8,
      right: -10,
      child: Material(
        type: MaterialType.canvas,
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: onPressed,
          child: Ink(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              color: CustomColor.primaryColor,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(4),
            child: const Icon(Icons.camera_alt_outlined, size: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
