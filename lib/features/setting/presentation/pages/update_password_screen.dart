import 'package:flutter/material.dart';
import 'package:tride/core/widgets/custom_app_bar.dart';

import '../widgets/updata_password_screen_body.dart';

class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        actionTitle: 'Back',
        onTap: () {
          Navigator.pop(context);
        },
      ),
      body: UpdatePasswordScreenBody(),
    );
  }
}
