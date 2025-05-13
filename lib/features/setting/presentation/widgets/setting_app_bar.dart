import 'package:flutter/material.dart';

import '../../../../core/theming/app_text_styles.dart';

class SettingAppBar extends StatelessWidget {
  const SettingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Text("Settings", style: AppTextStyles.roboto18Medium),
    );
  }
}
