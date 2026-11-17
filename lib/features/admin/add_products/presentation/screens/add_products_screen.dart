import 'package:dansho_store/core/common/widgets/admin_app_bar.dart';
import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/add_products/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:dansho_store/features/admin/add_products/presentation/refactors/add_product_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddProductsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<GetAllAdminProductsBloc>()
            ..add(
              const GetAllAdminProductsEvent.getAllProduct(isNotLoading: true),
            ),
        ),
      ],
      child: const Scaffold(
        appBar: AdminAppBar(
          backgroundColor: ColorsDark.mainColor,
          isMain: true,
          title: 'Products',
        ),
        body: AddProductBody(),
      ),
    );
  }
}
