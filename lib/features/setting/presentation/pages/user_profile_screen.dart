import 'package:flutter/material.dart';
import 'package:tride/core/helpers/extensions.dart';
import 'package:tride/core/widgets/custom_app_bar.dart';

import '../widgets/user_profile_screen_body.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        actionTitle: 'Back',
        onTap: () {
          context.pop();
        },
      ),
      body: UserProfileScreenBody(),
    );
  }
}
