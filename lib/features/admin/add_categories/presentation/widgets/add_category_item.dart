import 'package:cached_network_image/cached_network_image.dart';
import 'package:dansho_store/core/common/widgets/custom_container_linear_admin.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddCategoryItem extends StatelessWidget {
  const AddCategoryItem({
    required this.title,
    required this.image,
    required this.categoryId,
    super.key,
  });
  final String title;
  final String image;
  final String categoryId;

  @override
  Widget build(BuildContext context) {
    return CustomContainerLinearAdmin(
      height: 130.h,
      width: context.width,

      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                TextApp(
                  text: title,
                  theme: context.textStyle.copyWith(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeightHelper.bold,
                    fontFamily: FontFamilyHelper.poppinsEnglish,
                  ),
                ),
                // const Spacer(),
                //  TextApp(
                //   text: categoryId,
                //   theme: context.textStyle.copyWith(
                //     color: Colors.white,
                //     fontSize: 20.sp,
                //     fontWeight: FontWeightHelper.bold,
                //     fontFamily: FontFamilyHelper.poppinsEnglish,
                //   ),
                // ),
                const Spacer(),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.delete, color: Colors.red, size: 25.sp),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {},
                      child: Icon(Icons.edit, color: Colors.green, size: 25.sp),
                    ),
                  ],
                ),
                const Spacer(),
              ],
            ),
            Flexible(
              child: CachedNetworkImage(
                imageUrl: image,
                height: 90.h,
                width: 120.w,
                errorWidget: (context, url, error) =>
                    const Icon(Icons.error, color: Colors.red, size: 90),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
