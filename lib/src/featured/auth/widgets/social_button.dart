import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key, required this.image, required this.onTab,
  });

  final String image;
  final Function() onTab;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => onTab,
        borderRadius: BorderRadius.circular(16),
        child: Container(
          height: 65,
          width: 65,
          padding: const EdgeInsets.all(16),
          child: Image.asset(image),
        ),
      ),
    );
  }
}
