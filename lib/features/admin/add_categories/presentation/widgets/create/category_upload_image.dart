import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryUploadImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      width: context.width,

      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.8),
        borderRadius: BorderRadius.circular(15),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://plus.unsplash.com/premium_photo-1791976785133-850aee93997b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
          ),
        ),
      ),
    );
  }
}
