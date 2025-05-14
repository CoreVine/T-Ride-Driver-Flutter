import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_paddings.dart';
import '../../../../core/theming/app_text_styles.dart';

class SocialAuthButton extends StatelessWidget {
  const SocialAuthButton({super.key, required this.label, required this.imagePath, required this.onButtonTap});
 final String label;
 final String imagePath;
  final VoidCallback onButtonTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppPaddings.gapPadding26,vertical: AppPaddings.gapPadding16),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.grayE4),
          borderRadius: BorderRadius.circular(30),
          color: AppColors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(imagePath,),
            SizedBox(width: 10.w),
            Text(
              label,
              style: AppTextStyles.robotoSemiBold.copyWith(
                  color: AppColors.black
              ),
            ),
          ],
        ),
      ),
    );
  }
}