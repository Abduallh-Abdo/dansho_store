import 'package:dansho_store/core/app/connectivity_controller.dart';
import 'package:dansho_store/core/app/env.variables.dart';
import 'package:dansho_store/core/common/screens/no_network_screen.dart';
import 'package:dansho_store/core/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DanshoStore extends StatelessWidget {
  const DanshoStore({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConnectivityController.instance.isOnline,
      builder: (_, value, _) {
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariable.instance.isDev,
              title: 'Dansho Store',
              theme: ThemeData(
                colorScheme: .fromSeed(seedColor: Colors.deepPurple),
              ),
              builder: (context, widget) {
                return Scaffold(
                  body: Builder(
                    builder: (context) {
                      ConnectivityController.instance.init();
                      return widget!;
                    },
                  ),
                );
              },
              onGenerateRoute: AppRoutes.onGenerateRoute,
            ),
          );
        } else {
          return MaterialApp(
            title: 'No Network',
            debugShowCheckedModeBanner: EnvVariable.instance.isDev,
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
