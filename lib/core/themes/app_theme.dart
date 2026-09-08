import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/colors/colors_light.dart';
import 'package:dansho_store/core/themes/color_extension.dart';
import 'package:dansho_store/core/themes/assets_extension.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      ColorExtension.dark,
      AssetsExtension.dark,
    ],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      ColorExtension.light,
      AssetsExtension.light,
    ],

    useMaterial3: true,
  );
}
