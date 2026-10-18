import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class AdminAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdminAppBar({
    required this.isMain,
    required this.backgroundColor,
    required this.title,
    super.key,
  });
  final bool isMain;
  final Color backgroundColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      centerTitle: true,
      surfaceTintColor: Colors.transparent,
      title: TextApp(
        text: title,
        theme: context.textStyle.copyWith(
          fontSize: 18.sp,
          fontWeight: FontWeightHelper.bold,
          fontFamily: FontFamilyHelper.poppinsEnglish,
          color: Colors.white,
        ),
      ),
      leading: isMain
          ? IconButton(
              icon: const Icon(Icons.menu, color: Colors.white),
              onPressed: () async {
                await ZoomDrawer.of(context)!.toggle();
              },
            )
          : const SizedBox.shrink(),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50.h);
}
