import 'package:flutter/material.dart';
import 'package:tride/core/widgets/global_app_bar.dart';
import 'package:tride/features/notifications/presentation/widgets/notifications_screen_body.dart';
import 'package:tride/generated/l10n.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: globalAppBar(context, title: S.of(context).notifications),
      body: NotificationsScreenBody(),
    );
  }
}
