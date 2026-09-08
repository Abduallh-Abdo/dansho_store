import 'package:dansho_store/core/themes/assets_extension.dart';
import 'package:dansho_store/core/themes/color_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  //? Color
  ColorExtension get color => Theme.of(this).extension<ColorExtension>()!;

  //? images
  AssetsExtension get assets => Theme.of(this).extension<AssetsExtension>()!;

  //? style
  TextStyle get textStyle => Theme.of(this).textTheme.displaySmall!;

  //? Navigation
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(
    String routeName, {
    Object? arguments,
    required RoutePredicate predicate,
  }) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}
