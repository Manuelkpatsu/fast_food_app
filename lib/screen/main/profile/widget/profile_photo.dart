import 'package:fast_food_app/theme/custom_color.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

class ProfilePhoto extends StatelessWidget {
  final String imageUrl;
  final double height;
  final double width;

  const ProfilePhoto({
    Key? key,
    required this.imageUrl,
    this.height = 110,
    this.width = 110,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: CustomColor.textFieldBorderColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: isURL(imageUrl)
          ? FadeInImage.assetNetwork(
              placeholder: 'assets/images/profile-photo.png',
              image: imageUrl,
              fit: BoxFit.contain,
              height: height,
              width: width,
              imageErrorBuilder: (context, error, stackTrace) {
                return Image.asset(
                  'assets/images/profile-photo.png',
                  width: height,
                  height: width,
                  fit: BoxFit.contain,
                );
              },
            )
          : Image.asset(
              "assets/images/profile-photo.png",
              width: height,
              height: width,
              fit: BoxFit.contain,
            ),
    );
  }
}
