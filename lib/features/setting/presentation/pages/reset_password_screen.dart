import 'package:flutter/material.dart';
import 'package:tride/core/widgets/back_app_bar.dart';

import '../widgets/reset_password_body.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: backAppBar(context), body: ResetPasswordBody());
  }
}
