import 'package:dansho_store/core/routes/base_routes.dart';
import 'package:dansho_store/core/routes/under_build_screen.dart';
import 'package:dansho_store/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
  static const String loginScreen = '/loginScreen';
}

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.loginScreen:
        return BaseRoute(page: const LoginScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
