import 'package:flutter/material.dart';

const ListTileThemeData appMaterialLightListTileThemeData = ListTileThemeData(
  dense: true,
  selectedColor: Colors.black,
  iconColor: Colors.black,
  textColor: Colors.black,
  contentPadding: EdgeInsets.all(4),
  tileColor: Colors.transparent,
  selectedTileColor: Colors.transparent,
  horizontalTitleGap: 4,
  minVerticalPadding: 4,
  minLeadingWidth: 4,
  enableFeedback: true,
  style: ListTileStyle.list,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);

const ListTileThemeData appMaterialDarkListTileThemeData = ListTileThemeData(
  dense: true,
  selectedColor: Colors.white,
  iconColor: Colors.white,
  textColor: Colors.white,
  contentPadding: EdgeInsets.all(4),
  tileColor: Colors.transparent,
  selectedTileColor: Colors.transparent,
  horizontalTitleGap: 4,
  minVerticalPadding: 4,
  minLeadingWidth: 4,
  enableFeedback: true,
  style: ListTileStyle.list,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  ),
);
