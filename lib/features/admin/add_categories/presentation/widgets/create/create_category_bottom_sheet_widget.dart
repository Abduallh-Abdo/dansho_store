import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/common/toast/show_toast.dart';
import 'package:dansho_store/core/common/widgets/custom_button.dart';
import 'package:dansho_store/core/common/widgets/custom_text_field.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/create_category/create_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/create/category_upload_image.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateCategoryBottomSheetWidget extends StatefulWidget {
  const new({super.key});

  @override

  State<CreateCategoryBottomSheetWidget> createState() =>
      _CreateCategoryBottomSheetWidgetState();
}

class _CreateCategoryBottomSheetWidgetState
    extends State<CreateCategoryBottomSheetWidget> {
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
        children: [
          Center(
            child: TextApp(
              text: 'Create Category',
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
              BlocBuilder<UploadImageCubit, UploadImageState>(
                builder: (context, state) {
                  if (context.read<UploadImageCubit>().getImageUrl.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return CustomButton(
                    onPressed: () {
                      context.read<UploadImageCubit>().removeImage();
                    },
                    text: 'Remove',
                    width: 120.w,
                    height: 35.h,
                    lastRadius: 10,
                    threeRadius: 10,
                    backgroundColor: Colors.red,
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 10.h),
          const CategoryUploadImage(),
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
          BlocConsumer<CreateCategoryBloc, CreateCategoryState>(
            listener: (context, state) {
              state.whenOrNull(
                success: () {
                  ShowToast.showToastSuccess(
                    message: '${nameController.text} Category Created',
                    seconds: 2,
                  );
                  Navigator.pop(context);
                },
                error: (error) {
                  ShowToast.showToastSuccess(message: error);
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                loading: () {
                  return Container(
                    height: 50.h,
                    width: context.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(
                        color: ColorsDark.blueDark,
                      ),
                    ),
                  );
                },
                orElse: () {
                  return CustomButton(
                    height: 50.h,
                    width: context.width,
                    lastRadius: 20,
                    threeRadius: 20,
                    backgroundColor: ColorsDark.white,
                    textColor: ColorsDark.blueDark,
                    text: 'Create a new Category',
                    onPressed: () {
                      _validCreateCategory(context);
                    },
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

  void _validCreateCategory(BuildContext context) {
    if (formKey.currentState!.validate() ||
        context.read<UploadImageCubit>().getImageUrl.isEmpty) {
      if (context.read<UploadImageCubit>().getImageUrl.isEmpty) {
        ShowToast.showToastSuccess(message: S.of(context).valid_pick_image);
      } else {
        context.read<CreateCategoryBloc>().add(
          CreateCategoryEvent.createCategory(
            body: CreateCategoryRequestBody(
              name: nameController.text,
              image: context.read<UploadImageCubit>().getImageUrl,
            ),
          ),
        );
      }
    }
  }
}
