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
        children: const [
          // Create New Category
          CreateCategory(),

          // Categories List
          AddCategoryItem(
            title: 'Category 1',
            categoryId: '1',
            image: 'https://images.unsplash.com/photo-1791719557156-a2c576a4fe24?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
          ),
        ],
      ),
    );
  }
}
