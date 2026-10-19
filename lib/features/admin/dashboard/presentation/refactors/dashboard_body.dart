import 'package:dansho_store/core/styles/images/assets_manager.dart';
import 'package:dansho_store/features/admin/dashboard/presentation/widgets/dashboard_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
      child: RefreshIndicator(
        onRefresh: () async {},
        child: ListView(
          children: [
            const DashboardContainer(
              image: Assets.imagesAdminProductsDrawer,
              number: '0',
              isLoading: false,
              text: 'Products',
            ),
            SizedBox(height: 20.h),
            const DashboardContainer(
              image: Assets.imagesAdminCategoriesDrawer,
              number: '0',
              isLoading: false,
              text: 'Categories',
            ),
            SizedBox(height: 20.h),
            const DashboardContainer(
              image: Assets.imagesAdminUsersDrawer,
              number: '0',
              isLoading: false,
              text: 'Users',
            ),
          ],
        ),
      ),
    );
  }
}
