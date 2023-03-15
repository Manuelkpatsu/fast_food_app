import 'package:fast_food_app/screen/auth/forgot_password/forgot_password_screen.dart';
import 'package:fast_food_app/screen/auth/sign_up/sign_up_screen.dart';
import 'package:fast_food_app/screen/main/app.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/password_input_field.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/create_account.dart';
import 'widget/forgot_password_button.dart';
import 'widget/or_login_with_text.dart';
import '../../widget/social_login_tile.dart';
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
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const WelcomeText(),
                const SizedBox(height: 24),
                TextInputField(
                  controller: _emailController,
                  hintText: 'E-mail',
                  prefixIcon: const Icon(Icons.email_outlined, color: Colors.black),
                  validator: Validator.email,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                const SizedBox(height: 24),
                PasswordInputField(
                  controller: _passwordController,
                  hintText: 'Password',
                  prefixIcon: const Icon(Icons.lock_outline_rounded, color: Colors.black),
                  validator: Validator.password,
                  inputAction: TextInputAction.done,
                ),
                const SizedBox(height: 10),
                ForgotPasswordButton(
                  onTap: () => router.Router.pushNamed(ForgotPasswordScreen.routeName),
                ),
                const SizedBox(height: 20),
                CustomButton(
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {
                      router.Router.pushNamedAndRemoveUntil(MainApp.routeName);
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
                CreateAccount(
                  onTap: () => router.Router.pushNamed(SignUpScreen.routeName),
                ),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
