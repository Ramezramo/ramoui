import 'package:flutter/widgets.dart';

extension ColorExtension on Color {
  /// This helps get color for text based on background
  Color get getColorBasedOnBackground {
    var d = 0;

    var luminance = (0.299 * red + 0.587 * green + 0.114 * blue) / 255;

    // The luminance value = 0.5 will take the neutral brightness as the
    // boundary for dark and light. Because currently we need to set the
    // boundary leaning towards higher brightness, the set value is 0.65. That
    // means when the input color has a brightness value that must reach 0.65 or
    // higher then the result will be dark. Otherwise, the result will be light
    if (luminance > 0.65) {
      d = 0;
    } else {
      d = 255;
    }

    return Color.fromRGBO(d, d, d, 1);
  }
}
