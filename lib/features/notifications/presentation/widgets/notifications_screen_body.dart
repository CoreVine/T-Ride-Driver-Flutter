import 'package:flutter/material.dart';
import 'package:tride/features/notifications/presentation/widgets/notification_card.dart';

class NotificationsScreenBody extends StatelessWidget {
  const NotificationsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
      // child: EmptyNotificationsBody(),
      child: ListView.separated(
        itemCount: 5,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          return NotificationCard();
        },
      ),
    );
  }
}
