import 'package:flutter/material.dart';
import 'package:tride/generated/l10n.dart';

import '../../../../core/theming/app_text_styles.dart';

class SettingAppBar extends StatelessWidget {
  const SettingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text(
        S.of(context).settings,
        style: AppTextStyles.roboto18Medium(context),
      ),
    );
  }
}
