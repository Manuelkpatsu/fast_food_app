import 'package:fast_food_app/screen/widget/custom_button.dart';
import 'package:fast_food_app/screen/widget/text_input_field.dart';
import 'package:fast_food_app/utils/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widget/enter_code_text.dart';
import 'widget/otp_message_info.dart';
import 'widget/resend_code_button.dart';

class OtpScreen extends StatefulWidget {
  static const routeName = '/otp';

  final String email;

  const OtpScreen({Key? key, required this.email}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final GlobalKey<FormState> _otpFormKey = GlobalKey<FormState>();
  final TextEditingController _otpController = TextEditingController();

  @override
  void dispose() {
    _otpController.dispose();
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
            key: _otpFormKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                const SizedBox(height: 20),
                const EnterAuthorizationCodeText(),
                const SizedBox(height: 16),
                OtpMessageText(email: widget.email),
                const SizedBox(height: 24),
                TextInputField(
                  controller: _otpController,
                  hintText: '6 Digit Code',
                  validator: Validator.code,
                  inputType: TextInputType.number,
                  inputAction: TextInputAction.done,
                  inputFormatters: [LengthLimitingTextInputFormatter(6)],
                ),
                const SizedBox(height: 10),
                ResendCodeButton(onTap: () {}),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () {
                    if (_otpFormKey.currentState!.validate()) {
                      debugPrint('otp screen');
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
