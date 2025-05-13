import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/helpers/spacing.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/widgets/custom_button.dart';

class EditProfileActionsSection extends StatelessWidget {
  const EditProfileActionsSection({
    super.key,
    required this.userNameController,
    required this.emailController,
    required this.passwordController,
    required this.phoneController,
    required this.addressController,
    required this.formKey,
  });
  final TextEditingController userNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController phoneController;
  final TextEditingController addressController;
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: "Cancel",
            bgColor: AppColors.red,
            // textColor: AppColors.text,
            onPressed: () {
              context.pop();
            },
          ),
        ),
        largeHorizontalSpacer,
        Expanded(
          child: CustomButton(
            text: "Save",
            bgColor: AppColors.primary,
            // textColor: AppColors.background,
            onPressed: () {
              formKey.currentState!.validate();
            },
          ),
        ),
      ],
    );
  }
}
