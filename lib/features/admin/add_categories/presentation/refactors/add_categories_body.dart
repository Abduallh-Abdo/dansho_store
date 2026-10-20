import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/add_category_item.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/create/create_category.dart';
import 'package:flutter/material.dart';
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
              onRefresh: () async {},
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 10,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 15.h),
                      itemBuilder: (context, index) => const AddCategoryItem(
                        title: 'Category 1',
                        categoryId: '1',
                        image: 'https://images.unsplash.com/photo-1791719557156-a2c576a4fe24?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                      ),
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
