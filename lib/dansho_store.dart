import 'package:dansho_store/core/app/connectivity_controller.dart';
import 'package:dansho_store/core/app/cubit/app_cubit.dart';
import 'package:dansho_store/core/app/env.variables.dart';
import 'package:dansho_store/core/common/screens/no_network_screen.dart';
import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/routes/app_routes.dart';
import 'package:dansho_store/core/service/shared_prefs/prefs_keys.dart';
import 'package:dansho_store/core/service/shared_prefs/shared_pref.dart';
import 'package:dansho_store/core/themes/app_theme.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DanshoStore extends StatelessWidget {
  const DanshoStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (context, child) {
        return ValueListenableBuilder<bool>(
          valueListenable: ConnectivityController.instance.isOnline,
          builder: (context, isOnline, _) {
            if (isOnline) {
              return BlocProvider(
                create: (context) => sl<AppCubit>()
                  ..changeThemeMode(
                    sharedPref: SharedPref().getBoolean(PrefKeys.themeMode),
                  )
                  ..getSavedLang(),
                child: BlocBuilder<AppCubit, AppState>(
                  buildWhen: (previous, current) => previous != current,
                  builder: (context, state) {
                    final cubit = context.read<AppCubit>();
                    return MaterialApp(
                      debugShowCheckedModeBanner: EnvVariable.instance.isDev,
                      title: 'Dansho Store',
                      theme: cubit.isDark ? themeLight() : themeDark(),
                      locale: Locale(cubit.currentLang),
                      localizationsDelegates: const [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: S.delegate.supportedLocales,
                      builder: (context, widget) {
                        return GestureDetector(
                          onTap: () =>
                              FocusManager.instance.primaryFocus?.unfocus(),
                          child: Scaffold(body: widget!),
                        );
                      },
                      navigatorKey: sl<GlobalKey<NavigatorState>>(),
                      onGenerateRoute: AppRoutes.onGenerateRoute,
                      initialRoute:
                          SharedPref().getString(PrefKeys.accessToken) != null
                          ? SharedPref().getString(PrefKeys.userRole) == 'admin'
                                ? Routes.customer
                                : Routes.admin
                          : Routes.login,
                    );
                  },
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
      },
    );
  }
}
