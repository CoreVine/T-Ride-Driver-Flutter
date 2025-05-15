import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class LanguageItem extends StatelessWidget {
  const LanguageItem({
    super.key,
    this.onTap,
    required this.assetName,
    required this.title,
    required this.selected,
  });

  final void Function()? onTap;
  final String assetName;
  final String title;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: selected ? AppColors.orange : AppColors.grayE4,
            width: 1.5,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: ListTile(
          onTap: onTap,
          leading: SizedBox(
            width: 30.w,
            height: 30.h,
            child: CircleAvatar(
              radius: 30.r,
              backgroundImage: AssetImage(assetName),
            ),
          ),
          title: Text(title, style: AppTextStyles.roboto16Medium(context)),
          trailing:
              selected
                  ? SizedBox(
                    width: 24.w,
                    height: 24.h,
                    child: CircleAvatar(
                      backgroundColor: AppColors.orange,
                      child: Icon(Icons.check, color: AppColors.white),
                    ),
                  )
                  : null,
        ),
      ),
    );
  }
}
