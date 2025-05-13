import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/theming/app_colors.dart';

import '../../../../core/theming/app_text_styles.dart';

class UserProfileAppBar extends StatelessWidget {
  const UserProfileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Edit Profile", style: AppTextStyles.roboto18Medium),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          context.pop();
        },
        icon: SizedBox(
          width: 30.w,
          height: 30.h,
          child: FittedBox(
            child: CircleAvatar(
              backgroundColor: AppColors.red,
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
