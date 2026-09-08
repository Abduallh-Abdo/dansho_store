import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/colors/colors_light.dart';
import 'package:flutter/material.dart';

class ColorExtension extends ThemeExtension<ColorExtension> {
  const ColorExtension({required this.mainColor});

  final Color? mainColor;
  @override
  ThemeExtension<ColorExtension> copyWith({Color? image}) {
    return ColorExtension(mainColor: image ?? this.mainColor);
  }

  @override
  ThemeExtension<ColorExtension> lerp(
    covariant ThemeExtension<ColorExtension>? other,
    double t,
  ) {
    if (other is! ColorExtension) return this;
    return ColorExtension(mainColor: Color.lerp(mainColor, other.mainColor, t));
  }

  static const ColorExtension light = ColorExtension(
    mainColor: ColorsLight.mainColor,
  );
  static const ColorExtension dark = ColorExtension(
    mainColor: ColorsDark.mainColor,
  );
}
