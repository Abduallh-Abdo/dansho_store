import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/core/styles/images/assets_manager.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/categories_number/categories_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/products_number/products_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/bloc/users_number/users_number_bloc.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<ProductsNumberBloc>().add(
            const ProductsNumberEvent.getProductsNumber(),
          );
          context.read<CategoriesNumberBloc>().add(
            const CategoriesNumberEvent.getCategoriesNumber(),
          );
          context.read<UsersNumberBloc>().add(
            const UsersNumberEvent.getUsersNumber(),
          );
        },
        child: ListView(
          children: [
            BlocBuilder<ProductsNumberBloc, ProductsNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const DashboardContainer(
                    image: Assets.imagesAdminProductsDrawer,
                    number: '0',
                    isLoading: true,
                    text: 'Products',
                  ),
                  error: (error) => TextApp(
                    text: error,
                    theme: context.textStyle.copyWith(
                      color: Colors.red,
                      fontSize: 17.sp,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                  success: (number) {
                    return DashboardContainer(
                      image: Assets.imagesAdminProductsDrawer,
                      number: number,
                      isLoading: false,
                      text: 'Products',
                    );
                  },
                );
              },
            ),

            SizedBox(height: 20.h),
            BlocBuilder<CategoriesNumberBloc, CategoriesNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const DashboardContainer(
                    image: Assets.imagesAdminCategoriesDrawer,
                    number: '0',
                    isLoading: true,
                    text: 'Categories',
                  ),

                  error: (error) => TextApp(
                    text: error,
                    theme: context.textStyle.copyWith(
                      color: Colors.red,
                      fontSize: 17.sp,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                  success: (number) {
                    return DashboardContainer(
                      image: Assets.imagesAdminCategoriesDrawer,
                      number: number,
                      isLoading: false,
                      text: 'Categories',
                    );
                  },
                );
              },
            ),

            SizedBox(height: 20.h),
            BlocBuilder<UsersNumberBloc, UsersNumberState>(
              builder: (context, state) {
                return state.when(
                  loading: () => const DashboardContainer(
                    image: Assets.imagesAdminUsersDrawer,
                    number: '0',
                    isLoading: true,
                    text: 'Users',
                  ),
                  error: (error) => TextApp(
                    text: error,
                    theme: context.textStyle.copyWith(
                      color: Colors.red,
                      fontSize: 17.sp,
                      fontFamily: FontFamilyHelper.poppinsEnglish,
                      fontWeight: FontWeightHelper.bold,
                    ),
                  ),
                  success: (number) {
                    return DashboardContainer(
                      image: Assets.imagesAdminUsersDrawer,
                      number: number,
                      isLoading: false,
                      text: 'Users',
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
