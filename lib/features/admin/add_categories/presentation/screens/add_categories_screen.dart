import 'package:dansho_store/core/common/widgets/admin_app_bar.dart';
import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/get_all_admin_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/refactors/add_categories_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddCategoriesScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              GetAllAdminCategoryBloc(categoryAdminRepo: sl())
                ..add(const GetAllAdminCategoryEvent.getAllCategories()),
        ),
      ],
      child: const Scaffold(
        appBar: AdminAppBar(
          backgroundColor: ColorsDark.mainColor,
          isMain: true,
          title: 'Categories',
        ),
        body: AddCategoriesBody(),
      ),
    );
  }
}
