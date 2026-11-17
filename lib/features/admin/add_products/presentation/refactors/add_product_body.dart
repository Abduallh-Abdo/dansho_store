import 'package:dansho_store/features/admin/add_products/presentation/widgets/create/create_product.dart';
import 'package:dansho_store/features/admin/add_products/presentation/widgets/product_admin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddProductBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
      child: Column(
        children: [
          const CreateProduct(),
          SizedBox(height: 20.h),
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {},
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                  SliverToBoxAdapter(
                    child: GridView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 8,
                        mainAxisSpacing: 15,
                        childAspectRatio: 165.w / 250.h,
                      ),
                      itemBuilder: (context, index) {
                        return const ProductAdminItem(
                          title: 'MacBook',
                          categoryName: 'Apple',
                          price: '1220',
                          imageUrl: 'https://images.unsplash.com/photo-1793451117322-662c83cbeb97?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                        );
                      },
                    ),
                  ),
                  SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
