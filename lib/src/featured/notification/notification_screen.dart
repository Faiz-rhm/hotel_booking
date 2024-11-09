import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../helper/constants/app_colors.dart';
import '../../helper/constants/app_style.dart';
import '../shared/widgets/tab_screen_app_bar.dart';
import '../shared/widgets/tap_screen_app_bar_icon.dart';
import 'widgets/notification_card.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: false,
        actions: [
          TapScreenAppBarIcon(
            onTap: () {},
            icon: Icon(Icons.more_vert, size: context.isPhone ? 18 : 20,),
          ),
          Insets.gapW15,
        ],
        title: const TapScreenAppBar(
          title: "Notification",
          subTitle: "Unlock the Power of Instant Updates"
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(top: 8),
        itemCount: 10,
        itemBuilder: ((context, index) {
          return null;

          // final notification = notificationData[index];

          // return NotificationCard(
          //   notification: notification
          // );
        })
      )
    );
  }
}
