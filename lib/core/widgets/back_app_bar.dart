import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/widgets/custom_app_bar.dart';
import 'package:tride/generated/l10n.dart';

AppBar backAppBar(BuildContext context) {
  return customAppBar(
    context: context,
    actionTitle: S.of(context).back,
    onTap: () {
      context.pop();
    },
  );
}
