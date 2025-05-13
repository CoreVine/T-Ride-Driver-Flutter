import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color? bgColor;
  final Color? borderColor;
  final Color? textColor;
  final double? xPadding;
  final double? yPadding;
  final TextStyle? textStyle;
  final Function()? onPressed;

  const CustomButton({
    super.key,
    this.bgColor,
    this.textColor,
    this.xPadding,
    this.yPadding,
    this.textStyle,
    required this.text,
    required this.onPressed,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: bgColor ?? AppColors.gray,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.r),
            side: BorderSide(
              color: borderColor ?? AppColors.transparent,
              width: 1.5.sp,
            ),
          ),
        ),
        child: Text(
          text,
          style:
              textStyle ??
              AppTextStyles.robotoMedium.copyWith(
                color: textColor ?? AppColors.background,
              ),
        ),
      ),
    );
  }
}
