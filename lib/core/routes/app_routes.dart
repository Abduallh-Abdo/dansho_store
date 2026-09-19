import 'package:dansho_store/core/routes/base_routes.dart';
import 'package:dansho_store/core/routes/under_build_screen.dart';
import 'package:dansho_store/features/auth/presentation/screens/login_screen.dart';
import 'package:dansho_store/features/auth/presentation/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String initialRoute = '/';
  static const String login = '/loginScreen';
  static const String signup = '/signupScreen';
}

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return BaseRoute(page: const LoginScreen());
      case Routes.signup:
        return BaseRoute(page: const SignupScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
