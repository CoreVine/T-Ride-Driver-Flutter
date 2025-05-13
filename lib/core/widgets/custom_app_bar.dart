import 'package:flutter/material.dart';
import 'package:tride/core/theming/app_text_styles.dart';

AppBar customAppBar({
  required String actionTitle,
  required void Function()? onTap,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(actionTitle, style: AppTextStyles.roboto18Medium),
        ),
      ),
    ],
  );
}
