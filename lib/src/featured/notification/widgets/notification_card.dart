import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

import '../../../helper/constants/app_colors.dart';
import '../../../helper/constants/app_style.dart';
import '../model/notification_model.dart';

// IconData checkIcon({required String type}) {
//   if(type == 'order') {
//     return IconlyLight.bag;
//   }
//   if(type == 'discount') {
//     return IconlyLight.discount;
//   }
//   if(type == 'success') {
//     return IconlyLight.star;
//   }
//   if(type == 'cancel') {
//     return Iconsax.bag_cross;
//   }
//   if(type == 'call') {
//     return Iconsax.call;
//   }
//   return Iconsax.safe_home;
// }

class NotificationCard extends StatelessWidget {
  final NotificationModel notification;

  const NotificationCard({
    super.key,
    required this.notification
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: notification.status ? Colors.transparent : context.theme.cardColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0)
      ),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Container(
                height: 60,
                width: 60,
                padding: const EdgeInsets.all(12),
                margin: const EdgeInsets.only(left: 0),
                decoration: BoxDecoration(
                  // color: hexToColor(notification.color),
                  borderRadius: BorderRadius.circular(16)
                ),
                // child: Icon(checkIcon(type: notification.type), color: Colors.white,),
              ),

              Insets.gapW15,

              Expanded(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                    Text(notification.title, style: context.theme.textTheme.bodyLarge!.copyWith(
                      fontSize: context.isPhone ? 14 : 16
                    )),

                    Insets.gapH3,

                    Text(notification.subTitle, style: context.theme.textTheme.bodySmall!.copyWith(
                      fontSize: context.isPhone ? 12 : 14,),
                      maxLines: 2,),
                   ]
                 ),
               ),

               Text('2 min ago', style: context.theme.textTheme.bodySmall!.copyWith(
                  fontSize: context.isPhone ? 12 : 14
               ))
             ],
          ),
        ),
      ),
    );
  }
}
