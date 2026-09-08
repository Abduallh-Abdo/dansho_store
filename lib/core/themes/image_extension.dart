import 'package:flutter/material.dart';

class ImageExtension extends ThemeExtension<ImageExtension> {
  const ImageExtension({required this.imge});

  final String? imge;
  @override
  ThemeExtension<ImageExtension> copyWith({String? image}) {
    return ImageExtension(imge: image ?? this.imge);
  }

  @override
  ThemeExtension<ImageExtension> lerp(
    covariant ThemeExtension<ImageExtension>? other,
    double t,
  ) {
    if (other is! ImageExtension) return this;
    return ImageExtension(imge: imge);
  }

  static const ImageExtension light = ImageExtension(imge: null);
  static const ImageExtension dark = ImageExtension(imge: null);
}
