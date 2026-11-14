import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/common/toast/show_toast.dart';
import 'package:dansho_store/core/common/widgets/custom_button.dart';
import 'package:dansho_store/core/common/widgets/custom_text_field.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/update_category/update_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/update/update_upload_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCategoryBottomSheetWidget extends StatefulWidget {
  const new({
    required this.categoryId,
    required this.categoryName,
    required this.imageUrl,
    super.key,
  });

  final String categoryId;
  final String categoryName;
  final String imageUrl;

  @override
  State<UpdateCategoryBottomSheetWidget> createState() =>
      _UpdateCategoryBottomSheetWidgetState();
}

class _UpdateCategoryBottomSheetWidgetState
    extends State<UpdateCategoryBottomSheetWidget> {
  TextEditingController nameController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameController.text = widget.categoryName;
    super.initState();
  }

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
          UpdateUploadImage(imageUrl: widget.imageUrl),
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
          BlocConsumer<UpdateCategoryBloc, UpdateCategoryState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  context.pop();
                  return ShowToast.showToastSuccess(
                    message: '${nameController.text} updated successfully',
                    seconds: 2,
                  );
                },
                error: (error) => ShowToast.showToastSuccess(message: error),
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () => Container(
                  height: 50.h,
                  width: context.width,
                  decoration: BoxDecoration(
                    color: ColorsDark.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: ColorsDark.blueDark,
                    ),
                  ),
                ),
                orElse: () {
                  return CustomButton(
                    onPressed: () {
                      _validateButton(context);
                    },
                    height: 50.h,
                    width: context.width,
                    lastRadius: 20,
                    threeRadius: 20,
                    backgroundColor: ColorsDark.white,
                    textColor: ColorsDark.blueDark,
                    text: 'Update a new Category',
                  );
                },
              );
            },
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  void _validateButton(BuildContext context) {
    if (formKey.currentState!.validate()) {
      context.read<UpdateCategoryBloc>().add(
        UpdateCategoryEvent.updateCategory(
          body: UpdateCategoryRequestBody(
            id: widget.categoryId,
            name: nameController.text,
            image: context.read<UploadImageCubit>().getImageUrl.isEmpty
                ? widget.imageUrl
                : context.read<UploadImageCubit>().getImageUrl,
          ),
        ),
      );
    }
  }
}
