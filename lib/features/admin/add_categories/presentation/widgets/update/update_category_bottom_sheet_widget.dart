import 'package:dansho_store/core/common/widgets/custom_button.dart';
import 'package:dansho_store/core/common/widgets/custom_text_field.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/update/update_upload_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryBottomSheetWidget extends StatefulWidget {
  const new({super.key});

  @override
  State<UpdateCategoryBottomSheetWidget> createState() =>
      _UpdateCategoryBottomSheetWidgetState();
}

class _UpdateCategoryBottomSheetWidgetState
    extends State<UpdateCategoryBottomSheetWidget> {
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: TextApp(
              text: 'Update Category',
              theme: context.textStyle.copyWith(
                fontSize: 20.sp,
                fontWeight: FontWeightHelper.bold,
                fontFamily: FontFamilyHelper.poppinsEnglish,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextApp(
                text: 'Add a Photo',
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.bold,
                  fontFamily: FontFamilyHelper.poppinsEnglish,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const UpdateUploadImage(
            imageUrl: 'https://plus.unsplash.com/premium_photo-1791976785133-850aee93997b?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=NHwxMjA3fDA%3D',
          ),
          SizedBox(height: 20.h),
          TextApp(
            text: 'Enter The Category Name',
            theme: context.textStyle.copyWith(
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.medium,
              fontFamily: FontFamilyHelper.poppinsEnglish,
            ),
          ),
          SizedBox(height: 10.h),
          CustomTextField(
            controller: nameController,
            keyboardType: TextInputType.emailAddress,
            hintText: 'Category Name',
            validator: (value) {
              if (value == null || value.isEmpty || value.length < 2) {
                return 'please enter category name';
              }
              return null;
            },
          ),
          SizedBox(height: 20.h),
          CustomButton(
            height: 50.h,
            width: context.width,
            lastRadius: 20,
            threeRadius: 20,
            backgroundColor: ColorsDark.white,
            textColor: ColorsDark.blueDark,
            text: 'Update a new Category',
            onPressed: () {},
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
