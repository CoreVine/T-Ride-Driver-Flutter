import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({
    super.key,
    this.onTap,
    required this.iconData,
    required this.title,
    this.iconColor,
  });
  final void Function()? onTap;
  final IconData iconData;
  final String title;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: onTap,
          leading: SizedBox(
            width: 40.w,
            height: 40.h,
            child: CircleAvatar(
              radius: 40.r,
              backgroundColor: AppColors.gray,
              child: Icon(iconData, color: iconColor ?? AppColors.black),
            ),
          ),
          title: Text(
            title,
            style: AppTextStyles.robotoMedium.copyWith(
              color: iconColor ?? AppColors.black,
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
