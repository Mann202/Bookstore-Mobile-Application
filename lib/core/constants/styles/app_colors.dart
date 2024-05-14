import "package:flutter/material.dart";

class AppColors {
  static const Color transparent = Color(0x00000000);

  static const Color black = Color(0xff000000);
  static Color black50 = const Color(0xff000000).withOpacity(0.5);

  static const Color white = Color(0xffffffff);
  static Color white4 = const Color(0xffffffff).withOpacity(0.04);
  static Color white6 = const Color(0xffffffff).withOpacity(0.06);
  static Color white20 = const Color(0xffffffff).withOpacity(0.2);
  static Color white50 = const Color(0xffffffff).withOpacity(0.5);

  static const Color primary = Color(0xff1F46A6);
  static const Color secondary = Color(0xff8D8E8F);
  static const Color accent = Color(0xffE5ECFF);

  static const Color error = Color(0xffF73131);
  static const Color success = Color(0xff00944A);

  static Color getShade(Color color, {bool darker = false, double value = .1}) {
    assert(value >= 0 && value <= 1);

    final hsl = HSLColor.fromColor(color);
    final hslDark = hsl.withLightness(
      (darker ? (hsl.lightness - value) : (hsl.lightness + value))
          .clamp(0.0, 1.0),
    );

    return hslDark.toColor();
  }

  static MaterialColor getMaterialColorFromColor(Color color) {
    final Map<int, Color> colorShades = {
      50: getShade(color, value: 0.5),
      100: getShade(color, value: 0.4),
      200: getShade(color, value: 0.3),
      300: getShade(color, value: 0.2),
      400: getShade(color),
      500: color, //Primary value
      600: getShade(color, darker: true),
      700: getShade(color, value: 0.15, darker: true),
      800: getShade(color, value: 0.2, darker: true),
      900: getShade(color, value: 0.25, darker: true),
    };
    return MaterialColor(color.value, colorShades);
  }
}
