import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/core/widgets/custom_button.dart';

class NotificationCard extends StatelessWidget {
  NotificationCard({super.key});
  final String title = "Notification Title";
  final String message =
      "This is a notification message that describes the notification in detail.";
  final String? actionText = "Action";
  final bool haveAction = true;
  final Color iconColor = AppColors.orange30;
  final Color color = AppColors.orange;
  final IconData icon = Icons.notifications;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.gray,
        borderRadius: BorderRadius.circular(8.r),
        border: Border(left: BorderSide(color: color, width: 1.5)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              CircleAvatar(
                radius: 16.r,
                backgroundColor: iconColor,
                child: Icon(icon, color: color),
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  spacing: 12,
                  children: [
                    Text(
                      title,
                      style: AppTextStyles.roboto16SemiBold(
                        context,
                      ).copyWith(color: AppColors.black),
                    ),
                    Text(
                      message,
                      style: AppTextStyles.roboto12Regular(
                        context,
                      ).copyWith(color: AppColors.darkGray),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 24.w,
                height: 24.h,
                child: InkWell(onTap: () {}, child: Icon(Icons.clear)),
              ),
            ],
          ),
          if (haveAction)
            SizedBox(
              width: 120.w,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: CustomButton(
                  text: actionText!,
                  onPressed: () {},
                  bgColor: color,
                  textStyle: AppTextStyles.roboto12Medium(
                    context,
                  ).copyWith(color: AppColors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
