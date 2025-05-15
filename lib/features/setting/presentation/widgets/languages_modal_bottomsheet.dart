import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/widgets/custom_button.dart';
import 'package:tride/generated/l10n.dart';

import '../../../../core/theming/app_text_styles.dart';
import 'languages_listview_builder.dart';

Future<dynamic> showLanguagesModalBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    barrierColor: AppColors.transparent,
    context: context,
    builder: (context) {
      return Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(32.r),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000).withOpacity(.25),
              blurRadius: 4,
              offset: Offset(2.w, -2.h),
            ),
            BoxShadow(
              color: Color(0xff000000).withOpacity(.25),
              blurRadius: 4,
              offset: Offset(-2.w, 2.h),
            ),
          ],
        ),

        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DragHandle(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Text(
                  S.of(context).language,
                  style: AppTextStyles.roboto18Medium(context),
                ),
              ),
              const Expanded(child: LanguagesListViewBuilder()),
              Padding(
                padding: const EdgeInsets.all(16),
                child: CustomButton(
                  text: S.of(context).change,
                  bgColor: AppColors.orange,
                  // textColor: AppColors.background,
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}

class DragHandle extends StatelessWidget {
  const DragHandle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 50.w,
      height: 4,
      decoration: BoxDecoration(
        color: AppColors.darkGray,
        borderRadius: BorderRadius.circular(4.r),
      ),
    );
  }
}
