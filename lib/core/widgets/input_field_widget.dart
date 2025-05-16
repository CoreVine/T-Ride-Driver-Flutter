import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_text_styles.dart';

import '../theming/app_colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.textController,
    required this.labelText,
    this.isObscure,
    this.keyboardType,
    required this.validator,
    this.suffixIcon,
    this.hintText,
    this.initialValue,
    this.onSuffixButton,
  });

  final TextEditingController textController;
  final String labelText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;
  final String? hintText;
  final String? initialValue;
  final VoidCallback? onSuffixButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style: AppTextStyles.roboto14Medium(context),
          ),
          SizedBox(height: 4.h),
          TextFormField(
            keyboardType: keyboardType,
            obscureText: isObscure ?? false,
            controller: textController,
            initialValue: initialValue,
            cursorColor: AppColors.orange,
            style: AppTextStyles.roboto18Medium(context),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 16.sp,
              ),
              isDense: true,
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.orange, width: 2.w),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.black),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.red),
              ),
              suffixIcon: onSuffixButton != null ? GestureDetector(
                  onTap: onSuffixButton, child: suffixIcon) : suffixIcon,
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}
