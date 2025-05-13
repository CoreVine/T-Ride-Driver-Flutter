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
  });

  final TextEditingController textController;
  final String labelText;
  final bool? isObscure;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? Function(String? value) validator;
  final String? hintText;
  final String? initialValue;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labelText,
            style:
                AppTextStyles.roboto14Medium.copyWith(color: AppColors.black),
          ),
          SizedBox(height: 4.h),
          TextFormField(
            keyboardType: keyboardType,
            obscureText: isObscure ?? false,
            controller: textController,
            initialValue: initialValue,
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(
                color: Colors.grey[400],
                fontSize: 16.sp,
              ),
              isDense: true,
              contentPadding: EdgeInsets.only(bottom: 8.h),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.orange, width: 2.w),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.red),
              ),
              suffixIcon: suffixIcon,
            ),
            validator: validator,
          ),
        ],
      ),
    );
  }
}
