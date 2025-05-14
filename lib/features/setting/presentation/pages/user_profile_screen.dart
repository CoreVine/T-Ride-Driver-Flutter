import 'package:flutter/material.dart';
import 'package:tride/core/widgets/back_app_bar.dart';

import '../widgets/user_profile_screen_body.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: backAppBar(context), body: UserProfileScreenBody());
  }
}
