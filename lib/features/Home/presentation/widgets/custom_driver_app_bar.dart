import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helpers/measures.dart';
import '../../../../core/theming/app_assets.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';
import '../../../../generated/l10n.dart';

class CustomHomeDriverAppBar extends StatelessWidget {
  const CustomHomeDriverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 8.0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: AppColors.gray,
                child: Image.asset("assets/images/test.png"),
              ),
              SizedBox(width: AppMeasures.gap8,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).welcomeCaptain,
                    style: AppTextStyles.roboto12Medium(context),
                  ),
                  SizedBox(
                    width: 100.w,
                    child: Text(
                      'Mohamed Abdo',
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.roboto12Medium(context),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: AppMeasures.gap8,
              ),
              CircleAvatar(
                radius: 18.r,
                backgroundColor: AppColors.gray,
                child: Text("👋"),
              ),
            ],
          ),
          // Right side icons
          Row(
            children: [
              _buildButton(
                AppColors.gray,
                AppAssets.visa,
                () {},
              ),
              SizedBox(
                width: AppMeasures.gap8,
              ),
              _buildButton(AppColors.gray, AppAssets.notifications, () {}),
              SizedBox(
                width: AppMeasures.gap8,
              ),
              _buildButton(AppColors.orange, AppAssets.chat, () {}),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildButton(Color color, String assetPath, Function() onTap) {
  return GestureDetector(
    onTap: onTap,
    child: CircleAvatar(
      radius: 18.r,
      backgroundColor: color,
      child: SvgPicture.asset(assetPath),
    ),
  );
}
