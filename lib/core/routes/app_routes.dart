import 'package:dansho_store/core/routes/base_routes.dart';
import 'package:dansho_store/core/routes/under_build_screen.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:dansho_store/test_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
}

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return BaseRoute(page: const Row());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
