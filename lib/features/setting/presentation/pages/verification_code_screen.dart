import 'package:flutter/material.dart';
import 'package:tride/core/widgets/back_app_bar.dart';

import '../widgets/verification_code_screen_body.dart';

class VerificationCodeScreen extends StatelessWidget {
  const VerificationCodeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backAppBar(context),
      body: VerificationCodeScreenBody(),
    );
  }
}
