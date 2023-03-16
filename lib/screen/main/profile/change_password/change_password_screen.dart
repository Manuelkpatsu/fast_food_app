import 'package:fast_food_app/screen/widget/app_bar_title.dart';
import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/label_text.dart';
import 'package:fast_food_app/screen/widget/password_input_field.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screen/router.dart' as router;

import 'widget/change_password_info_text.dart';

class ChangePasswordScreen extends StatefulWidget {
  static const routeName = '/change_password';

  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final GlobalKey<FormState> _changePasswordFormKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController = TextEditingController();
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _currentPasswordController.dispose();
    _newPasswordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarTitle(title: 'Change Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Form(
          key: _changePasswordFormKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const ChangePasswordInfoText(),
              const SizedBox(height: 24),
              const LabelText(label: 'Current Password'),
              const SizedBox(height: 10),
              PasswordInputField(
                controller: _currentPasswordController,
                hintText: 'Current Password',
                validator: Validator.currentPassword,
                inputAction: TextInputAction.next,
              ),
              const SizedBox(height: 16),
              const LabelText(label: 'New Password'),
              const SizedBox(height: 10),
              PasswordInputField(
                controller: _newPasswordController,
                hintText: 'New Password',
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
                  if (_changePasswordFormKey.currentState!.validate()) {
                    router.Router.pop();
                  }
                },
                widget: const Text('Save Password'),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
