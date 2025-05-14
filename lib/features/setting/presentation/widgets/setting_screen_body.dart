import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/routing/routes.dart';
import 'package:tride/core/theming/app_colors.dart';
import 'package:tride/generated/l10n.dart';

import 'languages_modal_bottomsheet.dart';
import 'logout_dialog.dart';
import 'setting_item.dart';

class SettingScreenBody extends StatelessWidget {
  const SettingScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          SettingItem(
            title: S.of(context).profile,
            iconData: Icons.person,
            onTap: () {
              context.pushNamed(Routes.userProfileScreen);
            },
          ),
          SettingItem(
            title: S.of(context).language,
            iconData: Icons.translate,
            onTap: () {
              showLanguagesModalBottomSheet(context);
            },
          ),
          SettingItem(
            title: S.of(context).reset_password,
            iconData: Icons.lock_reset_rounded,
            onTap: () {
              context.pushNamed(Routes.resetPasswordScreen);
            },
          ),
          SettingItem(
            title: S.of(context).logout,
            iconColor: AppColors.red,
            iconData: Icons.logout_outlined,
            onTap: () {
              showLogOutDialog(context);
            },
          ),
        ],
      ),
    );
  }
}
