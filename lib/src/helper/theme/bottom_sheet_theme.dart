import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

const BottomSheetThemeData appMaterialLightBottomSheetThemeData =  BottomSheetThemeData(
  backgroundColor: Colors.white,
  modalBackgroundColor: Colors.white,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16),
      topRight: Radius.circular(16)
    )
  )
);