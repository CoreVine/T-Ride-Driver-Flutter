import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/routing/routes.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/utils/validation_utils.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/core/widgets/input_field_widget.dart';
import 'package:tride/generated/l10n.dart';

class ResetPasswordBody extends StatelessWidget {
  const ResetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppMeasures.padding24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.of(context).forgot_password,
            style: AppTextStyles.roboto24SemiBold(context),
          ),
          const SizedBox(height: 72),
          InputFieldWidget(
            labelText: S.of(context).your_email,
            keyboardType: TextInputType.emailAddress,
            validator: ValidationUtils.validateEmail,
            textController: TextEditingController(text: "Hello@gmail.com"),
          ),
          const SizedBox(height: 48),
          CustomButton(
            text: S.of(context).send_code,
            bgColor: Colors.orange,
            textColor: Colors.white,
            onPressed: () {
              context.pushNamed(Routes.verificationCodeScreen);
            },
          ),
        ],
      ),
    );
  }
}
