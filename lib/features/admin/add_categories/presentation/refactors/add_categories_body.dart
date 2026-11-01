import 'package:dansho_store/core/common/loading/empty_screen.dart';
import 'package:dansho_store/core/common/loading/loading_shimmer.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/get_all_admin_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/add_category_item.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/create/create_category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoriesBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          // Create New Category
          const CreateCategory(),
          SizedBox(height: 20.h),
          // Categories List
          Expanded(
            child: RefreshIndicator(
              color: ColorsDark.blueLight,
              onRefresh: () async {
                context.read<GetAllAdminCategoryBloc>().add(
                  const GetAllAdminCategoryEvent.getAllCategories(),
                );
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child:
                        BlocBuilder<
                          GetAllAdminCategoryBloc,
                          GetAllAdminCategoryState
                        >(
                          builder: (context, state) {
                            return state.when(
                              empty: EmptyScreen.new,
                              loading: () => ListView.separated(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 5,
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 15.h),
                                itemBuilder: (context, index) => LoadingShimmer(
                                  borderRadius: 15,
                                  height: 130.h,
                                ),
                              ),
                              success: (data) {
                                return ListView.separated(
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: data.getAllCategoriesList.length,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 15.h),
                                  itemBuilder: (context, index) =>
                                      AddCategoryItem(
                                        title:
                                            data
                                                .getAllCategoriesList[index]
                                                .name ??
                                            '',
                                        categoryId:
                                            data
                                                .getAllCategoriesList[index]
                                                .id ??
                                            '',
                                        image:
                                            data
                                                .getAllCategoriesList[index]
                                                .image ??
                                            '',
                                      ),
                                );
                              },
                              error: Text.new,
                            );
                          },
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
