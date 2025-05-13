import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/routing/routes.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/widgets/custom_button.dart';

import 'otp_widget.dart';
import 'resend_code_widget.dart';

class VerificationCodeScreenBody extends StatelessWidget {
  const VerificationCodeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppMeasures.padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Email verification", style: AppTextStyles.robotoW600S24),
          const SizedBox(height: 72),
          const OTPWidget(),
          const SizedBox(height: 48),
          CustomButton(
            text: "Confirm",
            bgColor: Colors.orange,
            textColor: Colors.white,
            onPressed: () {
              context.pushNamed(Routes.updatePasswordScreen);
            },
          ),
          const SizedBox(height: 32),
          Divider(),
          ResendCodeWidget(onResend: () {}),
        ],
      ),
    );
  }
}
