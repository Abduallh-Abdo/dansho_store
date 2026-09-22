import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/routes/base_routes.dart';
import 'package:dansho_store/core/routes/under_build_screen.dart';
import 'package:dansho_store/features/admin/presentation/screens/admin_screen.dart';
import 'package:dansho_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dansho_store/features/auth/presentation/screens/login_screen.dart';
import 'package:dansho_store/features/auth/presentation/screens/signup_screen.dart';
import 'package:dansho_store/features/customer/presentation/screens/customer_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Routes {
  static const String initialRoute = '/';
  static const String login = '/loginScreen';
  static const String signup = '/signupScreen';
  static const String admin = '/adminScreen';
  static const String customer = '/costomerScreen';
}

class AppRoutes {
  static Route<void> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.login:
        return BaseRoute(
          page: BlocProvider(
            create: (context) => AuthBloc(authRepo: sl()),
            child: const LoginScreen(),
          ),
        );
      case Routes.signup:
        return BaseRoute(page: const SignupScreen());
      case Routes.admin:
        return BaseRoute(page: const AdminScreen());
      case Routes.customer:
        return BaseRoute(page: const CustomerScreen());

      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
