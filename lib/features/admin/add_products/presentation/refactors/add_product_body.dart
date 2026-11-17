import 'package:dansho_store/core/common/loading/empty_screen.dart';
import 'package:dansho_store/core/common/loading/loading_shimmer.dart';
import 'package:dansho_store/features/admin/add_products/presentation/bloc/get_all_admin_products/get_all_admin_products_bloc.dart';
import 'package:dansho_store/features/admin/add_products/presentation/widgets/create/create_product.dart';
import 'package:dansho_store/features/admin/add_products/presentation/widgets/product_admin_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              onRefresh: () async {
                context.read<GetAllAdminProductsBloc>().add(
                  const GetAllAdminProductsEvent.getAllProduct(
                    isNotLoading: true,
                  ),
                );
              },
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: 20.h)),
                  SliverToBoxAdapter(
                    child:
                        BlocBuilder<
                          GetAllAdminProductsBloc,
                          GetAllAdminProductsState
                        >(
                          builder: (context, state) {
                            return state.when(
                              success: (productList) {
                                return GridView.builder(
                                  itemCount: productList.length,
                                  shrinkWrap: true,
                                  physics: const NeverScrollableScrollPhysics(),
                                  padding: EdgeInsets.zero,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        crossAxisSpacing: 8,
                                        mainAxisSpacing: 15,
                                        childAspectRatio: 165.w / 250.h,
                                      ),
                                  itemBuilder: (context, index) {
                                    return ProductAdminItem(
                                      title: productList[index].title ?? '',
                                      categoryName:
                                          productList[index].category!.name ??
                                          '',
                                      price: productList[index].price
                                          .toString(),
                                      imageUrl: productList[index].images.first,
                                    );
                                  },
                                );
                              },
                              loading: () => GridView.builder(
                                itemCount: 10,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                padding: EdgeInsets.zero,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 8,
                                      mainAxisSpacing: 15,
                                      childAspectRatio: 165.w / 250.h,
                                    ),
                                itemBuilder: (context, index) {
                                  return LoadingShimmer(
                                    height: 250.h,
                                    width: 165.w,
                                  );
                                },
                              ),
                              error: Text.new,
                              empty: EmptyScreen.new,
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
