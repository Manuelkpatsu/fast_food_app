import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';

import 'widget/enter_email_text.dart';
import 'widget/forgot_password_info_text.dart';

class ForgotPasswordScreen extends StatefulWidget {
  static const routeName = '/forgot_password';

  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final GlobalKey<FormState> _forgotPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Forgot Password'),
        titleSpacing: 2,
        centerTitle: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _forgotPasswordFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const EnterEmailText(),
                const SizedBox(height: 10),
                const ForgotPasswordInfoText(),
                const SizedBox(height: 10),
                TextInputField(
                  controller: _emailController,
                  hintText: 'Email',
                  validator: Validator.email,
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.done,
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () {
                    if (_forgotPasswordFormKey.currentState!.validate()) {
                      debugPrint('forgot password screen');
                    }
                  },
                  widget: const Text('Next'),
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
