import 'package:flutter/material.dart';

import 'theme_shadows.dart';

final IconThemeData appMaterialLightIconThemeData = IconThemeData(
  color: Colors.black,
  size: 24,
  shadows: iconLightShadows,
);

final IconThemeData appMaterialDarkIconThemeData = IconThemeData(
  color: Colors.white,
  size: 24,
  shadows: iconDarkShadows,
);
