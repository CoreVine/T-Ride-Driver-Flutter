import 'package:flutter/material.dart';

class AppMeasures {
  // Gap Values (for spacing between widgets)
  static const double gap4 = 4.0;
  static const double gap8 = 8.0;
  static const double gap12 = 12.0;
  static const double gap16 = 16.0;
  static const double gap18 = 18.0;
  static const double gap20 = 20;
  static const double gap22 = 22.0;
  static const double gap24 = 24;
  static const double gap26 = 26.0;
  static const double gap28 = 28;
  static const double gap32 = 32.0;
  static const double gap40 = 40;
  static const double gap48 = 48;
  static const double gap64 = 64;
  static const double gap72 = 72;
  static const double gap96 = 96;

  // Padding Values (for spacing within widgets)
  static const double padding4 = 4.0;
  static const double padding8 = 8.0;
  static const double padding12 = 12.0;
  static const double padding16 = 16.0;
  static const double padding18 = 18.0;
  static const double padding22 = 22.0;
  static const double padding26 = 26.0;
  static const double padding32 = 32.0;

  //Common Padding Values
  static const double small = 8.0;
  static const double medium = 16.0;
  static const double large = 24.0;

  // Gap Getters
  static EdgeInsets get gapPadding4 => const EdgeInsets.all(gap4);
  static EdgeInsets get gapPadding8 => const EdgeInsets.all(gap8);
  static EdgeInsets get gapPadding12 => const EdgeInsets.all(gap12);
  static EdgeInsets get gapPadding16 => const EdgeInsets.all(gap16);
  static EdgeInsets get gapPadding18 => const EdgeInsets.all(gap18);
  static EdgeInsets get gapPadding22 => const EdgeInsets.all(gap22);
  static EdgeInsets get gapPadding26 => const EdgeInsets.all(gap26);
  static EdgeInsets get gapPadding32 => const EdgeInsets.all(gap32);

  // Padding Getters
  static EdgeInsets get paddingAll4 => const EdgeInsets.all(padding4);
  static EdgeInsets get paddingAll8 => const EdgeInsets.all(padding8);
  static EdgeInsets get paddingAll12 => const EdgeInsets.all(padding12);
  static EdgeInsets get paddingAll16 => const EdgeInsets.all(padding16);
  static EdgeInsets get paddingAll18 => const EdgeInsets.all(padding18);
  static EdgeInsets get paddingAll22 => const EdgeInsets.all(padding22);
  static EdgeInsets get paddingAll26 => const EdgeInsets.all(padding26);
  static EdgeInsets get paddingAll32 => const EdgeInsets.all(padding32);

  //Common Padding Getters
  static EdgeInsets get smallPadding => const EdgeInsets.all(small);
  static EdgeInsets get mediumPadding => const EdgeInsets.all(medium);
  static EdgeInsets get largePadding => const EdgeInsets.all(large);

  // Flexible Padding Methods
  static EdgeInsets symmetricPadding({
    double horizontal = 0.0,
    double vertical = 0.0,
  }) {
    return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
  }

  static EdgeInsets onlyPadding({
    double top = 0.0,
    double bottom = 0.0,
    double left = 0.0,
    double right = 0.0,
  }) {
    return EdgeInsets.only(top: top, bottom: bottom, left: left, right: right);
  }
}
