import 'package:dansho_store/core/styles/images/assets_manager.dart';
import 'package:flutter/material.dart';

class AssetsExtension extends ThemeExtension<AssetsExtension> {
  const AssetsExtension({required this.bigNavBar, required this.homeBg});

  final String? bigNavBar;
  final String? homeBg;
  @override
  ThemeExtension<AssetsExtension> copyWith({
    String? bigNavBar,
    String? homeBg,
  }) {
    return AssetsExtension(bigNavBar: bigNavBar, homeBg: homeBg);
  }

  @override
  ThemeExtension<AssetsExtension> lerp(
    covariant ThemeExtension<AssetsExtension>? other,
    double t,
  ) {
    if (other is! AssetsExtension) return this;
    return AssetsExtension(bigNavBar: bigNavBar, homeBg: homeBg);
  }

  static const AssetsExtension light = AssetsExtension(
    bigNavBar: Assets.imagesCustomerBigNavBarDark,
    homeBg: Assets.imagesCustomerHomeBgDark,
  );
  static const AssetsExtension dark = AssetsExtension(
    bigNavBar: Assets.imagesCustomerBigNavBarLight,
    homeBg: Assets.imagesCustomerHomeBgLight,
  );
}
