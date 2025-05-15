import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class InputFieldWidget extends StatelessWidget {
  const InputFieldWidget({
    super.key,
    this.textController,
    required this.labelText,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
  });

  final TextEditingController? textController;
  final String labelText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textController,
      keyboardType: keyboardType,
      validator: validator,
      textAlign: TextAlign.end,
      obscureText: obscureText,
      decoration: InputDecoration(
        border: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.red),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.red),
        ),
        labelText: labelText,
        labelStyle: AppTextStyles.roboto16Medium(context),
      ),
    );
  }
}
