import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
    required this.onTab,
    required this.icon,
    this.color = Colors.transparent,
  });

  final Function() onTab;
  final Icon icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 44,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      ),
      child: IconButton(
        onPressed: onTab,
        icon: icon
      ),
    );
  }
}
