import 'package:flutter/material.dart';
extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);
  Size get mediaQuerySize => mediaQuery.size;
  double get height => mediaQuerySize.height;
  double get width => mediaQuerySize.width;

  FocusScopeNode get focusScope => FocusScope.of(this);

  Orientation get orientation => MediaQuery.of(this).orientation;
  /// check if device is on landscape mode
  bool get isLandscape => orientation == Orientation.landscape;
  /// check if device is on portrait mode
  bool get isPortrait => orientation == Orientation.portrait;

  /// get the shortestSide from screen
  double get mediaQueryShortestSide => mediaQuerySize.shortestSide;

  /// True if width be larger than 800
  bool get showNavbar => (width > 800);

  /// True if the shortestSide is smaller than 600p
  bool get isPhone => (mediaQueryShortestSide < 600);

  /// True if the shortestSide is largest than 600p
  bool get isSmallTablet => (mediaQueryShortestSide >= 600);

  /// True if the shortestSide is largest than 720p
  bool get isLargeTablet => (mediaQueryShortestSide >= 720);

  /// True if the current device is Tablet
  bool get isTablet => isSmallTablet || isLargeTablet;
}
