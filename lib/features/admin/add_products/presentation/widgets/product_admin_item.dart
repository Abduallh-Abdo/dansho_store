import 'package:cached_network_image/cached_network_image.dart';
import 'package:dansho_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:dansho_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_products/presentation/widgets/update/update_product_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductAdminItem extends StatelessWidget {
  const new({
    required this.imageUrl,
    required this.price,
    required this.title,
    required this.categoryName,
    super.key,
  });
  final String imageUrl;
  final String price;
  final String title;
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 250.h,
      width: 165.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //? Delete Button
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.delete, color: Colors.red, size: 25),
              ),
              //? Edit Button
              IconButton(
                onPressed: () async {
                  await CustomBottomSheet.showModelBottomSheetContainer(
                    context: context,
                    widget: const UpdateProductBottomSheet(),
                  );
                },
                icon: const Icon(Icons.edit, color: Colors.green, size: 25),
              ),
            ],
          ),
          Flexible(
            child: Center(
              child: CachedNetworkImage(
                width: 120.w,
                height: 200.h,
                imageUrl: imageUrl,
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error, color: Colors.red, size: 70),
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10.w),
            child: TextApp(
              text: title,
              maxLines: 1,
              theme: TextStyle(
                fontSize: 15.sp,
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.poppinsEnglish,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10.w),
            child: TextApp(
              text: categoryName,
              maxLines: 1,
              theme: TextStyle(
                fontSize: 13.sp,
                color: Colors.white,
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Padding(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 10.w),
            child: TextApp(
              text: '\$ $price',
              maxLines: 1,
              theme: TextStyle(
                fontSize: 13.sp,
                color: Colors.white,
                fontWeight: FontWeightHelper.medium,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
