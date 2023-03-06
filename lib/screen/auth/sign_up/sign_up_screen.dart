import 'package:fast_food_app/screen/auth/login/login_screen.dart';
import 'package:fast_food_app/screen/auth/otp/otp_screen.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/password_input_field.dart';
import 'package:fast_food_app/screen/widget/social_login_tile.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/agree_terms_policy.dart';
import 'widget/already_have_account.dart';
import 'widget/label_text.dart';
import 'widget/or_sign_up_with_text.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/register';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  bool _isChecked = false;

  @override
  void dispose() {
    _emailController.dispose();
    _fullNameController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
            key: _signUpFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const LabelText(label: 'Email'),
                const SizedBox(height: 10),
                TextInputField(
                  controller: _emailController,
                  hintText: 'E-mail',
                  validator: Validator.email,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                const LabelText(label: 'Full Name'),
                const SizedBox(height: 10),
                TextInputField(
                  controller: _fullNameController,
                  hintText: 'Full name',
                  validator: Validator.fullName,
                  inputType: TextInputType.name,
                  inputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                const LabelText(label: 'Password'),
                const SizedBox(height: 10),
                PasswordInputField(
                  controller: _passwordController,
                  hintText: 'Password',
                  validator: Validator.password,
                  inputAction: TextInputAction.next,
                ),
                const SizedBox(height: 16),
                const LabelText(label: 'Confirm Password'),
                const SizedBox(height: 10),
                PasswordInputField(
                  controller: _confirmPasswordController,
                  hintText: 'Confirm Password',
                  validator: (String? value) {
                    if (value!.isEmpty) {
                      return 'Confirm password is required';
                    }

                    if (_passwordController.text.trim() !=
                        _confirmPasswordController.text.trim()) {
                      return "Passwords do not match";
                    }

                    return null;
                  },
                  inputAction: TextInputAction.done,
                ),
                const SizedBox(height: 15),
                AgreeTermsPolicy(
                  isChecked: _isChecked,
                  onChanged: (value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  onTermsTap: () {},
                  onPolicyTap: () {},
                ),
                const SizedBox(height: 26),
                CustomButton(
                  onPressed: () {
                    if (_signUpFormKey.currentState!.validate()) {
                      router.Router.pushNamedAndRemoveUntil(
                        OtpScreen.routeName,
                        args: _emailController.text.trim(),
                      );
                    }
                  },
                  widget: const Text('Create Account'),
                ),
                const SizedBox(height: 24),
                const OrSignUpWithText(),
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
                AlreadyHaveAccount(
                  onTap: () => router.Router.pushNamed(LoginScreen.routeName),
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
