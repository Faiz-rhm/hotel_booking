import 'package:flutter/material.dart';
import 'package:hotel_booking/src/helper/extension/build_context_extension.dart';

class AddItemCard extends StatelessWidget {
  const AddItemCard({
    super.key,
    required this.onTab,
    required this.title,
    required this.icon,
  });

  final void Function() onTab;
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: onTab,
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: context.isPhone ? 4 : 8),
        horizontalTitleGap: 16,
        leading: Icon(icon,),
        title: Text(title, style: context.theme.textTheme.labelSmall!.copyWith(
          fontSize: context.isPhone ? 14 : 16
        )),
        // trailing: Icon(
        //   IconlyLight.arrow_right_2,
        //   size: context.isPhone ? 16 : 18,
        // ),
      ),
    );
  }
}
