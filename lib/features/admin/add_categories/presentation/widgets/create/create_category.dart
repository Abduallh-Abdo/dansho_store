import 'package:dansho_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:dansho_store/core/common/widgets/custom_button.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/create/create_category_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateCategory extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextApp(
          text: 'Get all Categories',
          theme: context.textStyle.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: FontFamilyHelper.poppinsEnglish,
            color: context.color.textColor,
          ),
        ),
        CustomButton(
          onPressed: () async {
            await CustomBottomSheet.showModelBottomSheetContainer(
              context: context,
              widget: const CreateCategoryBottomSheetWidget(),
            );
          },
          text: 'Add',
          width: 90.w,
          height: 35.h,
          lastRadius: 10,
          threeRadius: 10,
          backgroundColor: ColorsDark.blueDark,
        ),
      ],
    );
  }
}
