import 'package:flutter/material.dart';

import '../widgets/user_profile_app_bar.dart';
import '../widgets/user_profile_screen_body.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: UserProfileAppBar(),
      ),
      body: UserProfileScreenBody(),
    );
  }
}
