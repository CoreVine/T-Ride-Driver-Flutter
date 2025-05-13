import 'package:flutter/material.dart';
import 'package:tride/core/helpers/measures.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/utils/validation_utils.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/core/widgets/input_field_widget.dart';

class UpdatePasswordScreenBody extends StatelessWidget {
  const UpdatePasswordScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppMeasures.padding16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Reset old password", style: AppTextStyles.robotoW600S24),
          const SizedBox(height: 72),
          InputFieldWidget(
            labelText: "New Password",
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            showObscureIcon: true,
            textController: TextEditingController(),
            validator: ValidationUtils.validatePassword,
          ),
          const SizedBox(height: 16),
          InputFieldWidget(
            labelText: "Confirm New Password",
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            showObscureIcon: true,
            textController: TextEditingController(),
            validator: ValidationUtils.validatePassword,
          ),
          const SizedBox(height: 48),
          CustomButton(
            bgColor: AppColors.orange,
            textColor: AppColors.white,
            text: "Set Password",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
