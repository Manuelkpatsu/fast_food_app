import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/password_input_field.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:flutter/material.dart';

import 'widget/create_account.dart';
import 'widget/forgot_password_button.dart';
import 'widget/or_login_with_text.dart';
import 'widget/social_login_tile.dart';
import 'widget/welcome_text.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const WelcomeText(),
                const SizedBox(height: 24),
                TextInputField(
                  controller: _emailController,
                  hintText: 'E-mail',
                  prefixIcon: const Icon(Icons.email_outlined, color: Colors.black),
                ),
                const SizedBox(height: 24),
                PasswordInputField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.black),
                ),
                const SizedBox(height: 10),
                ForgotPasswordButton(onTap: () {}),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {
                      debugPrint('login');
                    }
                  },
                  widget: const Text('Login'),
                ),
                const SizedBox(height: 24),
                const OrLoginWithText(),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SocialLoginTile(
                      onPressed: () {},
                      image: 'assets/images/apple.png',
                    ),
                    SocialLoginTile(
                      onPressed: () {},
                      image: 'assets/images/google.png',
                    ),
                    SocialLoginTile(
                      onPressed: () {},
                      image: 'assets/images/facebook.png',
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                CreateAccount(onTap: () {}),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
