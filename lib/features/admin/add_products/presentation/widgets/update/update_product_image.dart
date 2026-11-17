import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateProductImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Stack(
          children: [
            //? Image
            Container(
              height: 90.h,
              width: context.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15.r),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1793451117322-662c83cbeb97?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
                  ),
                ),
              ),
            ),
            //? Icon Button
            Container(
              height: 90.h,
              width: context.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15.r),
              ),
              child: Center(
                child: Icon(
                  Icons.add_a_photo_outlined,
                  size: 50.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
      separatorBuilder: (context, index) => SizedBox(height: 6.h),
    );
  }
}
