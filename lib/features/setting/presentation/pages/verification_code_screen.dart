import 'package:flutter/material.dart';
import 'package:tride/core/widgets/custom_app_bar.dart';
import 'package:tride/generated/l10n.dart';

import '../widgets/verification_code_screen_body.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        actionTitle: S.of(context).back,
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: VerificationCodeScreenBody(),
    );
  }
}
