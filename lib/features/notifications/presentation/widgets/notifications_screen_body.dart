import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_assets.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/core/theming/app_text_styles.dart';
import 'package:tride/generated/l10n.dart';

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      child: Column(
        spacing: 16,
        children: [
          Text(
            S.of(context).no_notifications_yet,
            style: AppTextStyles.roboto24SemiBold(context),
          ),
          Text(
            S.of(context).check_back_later,
            textAlign: TextAlign.center,
            style: AppTextStyles.roboto16Regular(
              context,
            ).copyWith(color: AppColors.darkGray),
          ),
          const SizedBox(height: 32),
          Image.asset(AppAssets.pushNotificationImage),
        ],
      ),
    );
  }
}
