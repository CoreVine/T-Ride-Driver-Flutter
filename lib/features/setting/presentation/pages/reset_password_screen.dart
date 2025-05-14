import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/widgets/custom_app_bar.dart';
import 'package:tride/generated/l10n.dart';

import '../widgets/reset_password_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        actionTitle: S.of(context).back,
        onTap: () {
          context.pop();
        },
      ),
      body: ResetPasswordBody(),
    );
  }
}
