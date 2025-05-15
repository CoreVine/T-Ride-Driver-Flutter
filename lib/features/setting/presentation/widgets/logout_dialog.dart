import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/generated/l10n.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_text_styles.dart';

Future<dynamic> showLogOutDialog(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        insetPadding: const EdgeInsets.symmetric(horizontal: 24),
        contentPadding: const EdgeInsets.all(21),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        icon: SizedBox(
          width: 80.w,
          height: 80.w,
          child: FittedBox(
            child: CircleAvatar(
              backgroundColor: AppColors.gray,
              // ignore: unnecessary_const
              child: Icon(Icons.warning_rounded, color: AppColors.black),
            ),
          ),
        ),
        title: Text(
          S.of(context).warning_logout_message,
          style: AppTextStyles.roboto16Regular(context),
        ),
        actions: [
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: S.of(context).cancel,
                  bgColor: AppColors.white,
                  borderColor: AppColors.grayE4,
                  textColor: AppColors.black,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: CustomButton(
                  text: S.of(context).logout,
                  bgColor: AppColors.red,
                  textColor: AppColors.white,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      );
    },
  );
}
