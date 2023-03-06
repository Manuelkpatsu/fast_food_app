import 'package:fast_food_app/screen/auth/sign_up/widget/label_text.dart';
import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/password_input_field.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';

import 'widget/reset_password_info_text.dart';

class ResetPasswordScreen extends StatefulWidget {
  static const routeName = '/reset_password';

  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final GlobalKey<FormState> _resetPasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Reset Password'),
        titleSpacing: 2,
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _resetPasswordFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ResetPasswordInfoText(),
              const SizedBox(height: 24),
              const LabelText(label: 'New Password'),
              const SizedBox(height: 10),
              PasswordInputField(
                controller: _newPasswordController,
                hintText: 'Enter New Password',
                validator: Validator.newPassword,
                inputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),
              const LabelText(label: 'Confirm New Password'),
              const SizedBox(height: 10),
              PasswordInputField(
                controller: _confirmPasswordController,
                hintText: 'Confirm New Password',
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Confirm password is required';
                  }

                  if (_newPasswordController.text.trim() !=
                      _confirmPasswordController.text.trim()) {
                    return "Passwords do not match";
                  }

                  return null;
                },
                inputAction: TextInputAction.done,
              ),
              const SizedBox(height: 24),
              CustomButton(
                onPressed: () {
                  if (_resetPasswordFormKey.currentState!.validate()) {
                    debugPrint('reset password screen');
                  }
                },
                widget: const Text('Done'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
