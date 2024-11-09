import 'package:flutter/material.dart';

import 'theme_shadows.dart';

final IconThemeData appMaterialLightPrimaryIconTheme = IconThemeData(
  color: Colors.black,
  size: 24,
  shadows: iconLightShadows,
);

// ignore: prefer-correct-identifier-length
final IconThemeData appMaterialDarkPrimaryIconTheme = IconThemeData(
  color: Colors.white,
  size: 24,
  shadows: iconDarkShadows,
);
