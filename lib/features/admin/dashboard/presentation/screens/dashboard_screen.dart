import 'package:dansho_store/core/common/widgets/admin_app_bar.dart';
import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/refactors/dashboard_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              ProductsNumberBloc(dashboardRepo: sl())
                ..add(const ProductsNumberEvent.getProductsNumber()),
        ),
        BlocProvider(
          create: (context) =>
              CategoriesNumberBloc(dashboardRepo: sl())
                ..add(const CategoriesNumberEvent.getCategoriesNumber()),
        ),
        BlocProvider(
          create: (context) =>
              UsersNumberBloc(dashboardRepo: sl())
                ..add(const UsersNumberEvent.getUsersNumber()),
        ),
      ],
      child: const Scaffold(
        appBar: AdminAppBar(
          backgroundColor: ColorsDark.mainColor,
          isMain: true,
          title: 'Dashboard',
        ),
        body: DashboardBody(),
      ),
    );
  }
}
