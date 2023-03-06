import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/custom_outline_button.dart';
import 'package:fast_food_app/theme/gradient.dart';
import 'package:flutter/material.dart';

import 'widget/welcome_message_sub_title_text.dart';
import 'widget/welcome_message_title_text.dart';

class WelcomeScreen extends StatelessWidget {
  static const routeName = '/welcome';

  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: CustomGradient.primaryGradient),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const WelcomeMessageTitleText(),
            const SizedBox(height: 12),
            const WelcomeMessageSubTitleText(),
            const SizedBox(height: 50),
            CustomButton(
              onPressed: () {},
              widget: const Text('Login'),
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 16),
            CustomOutlineButton(
              onPressed: () {},
              widget: const Text('Sign Up'),
              fontWeight: FontWeight.w500,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
