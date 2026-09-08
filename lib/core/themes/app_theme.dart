import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/colors/colors_light.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/themes/color_extension.dart';
import 'package:dansho_store/core/themes/assets_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      ColorExtension.dark,
      AssetsExtension.dark,
    ],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        color: ColorsDark.white,
        fontSize: 14.sp,
        fontFamily: FontFamilyHelper.getLocalazedFontFamily(),
      ),
    ),
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
    textTheme: TextTheme(
      displaySmall: TextStyle(
        color: ColorsLight.black,
        fontSize: 14.sp,
        fontFamily: FontFamilyHelper.getLocalazedFontFamily(),
      ),
    ),
  );
}
