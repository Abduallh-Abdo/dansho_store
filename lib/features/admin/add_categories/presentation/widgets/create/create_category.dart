import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/common/bottom_sheet/custom_bottom_sheet.dart';
import 'package:dansho_store/core/common/widgets/custom_button.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/core/styles/fonts/font_family_helper.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/create_category/create_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/get_all_admin_category/get_all_admin_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/widgets/create/create_category_bottom_sheet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              widget: MultiBlocProvider(
                providers: [
                  BlocProvider(create: (context) => sl<CreateCategoryBloc>()),
                  BlocProvider(create: (context) => sl<UploadImageCubit>()),
                ],

                child: const CreateCategoryBottomSheetWidget(),
              ),
              whenComplete: () {
                context.read<GetAllAdminCategoryBloc>().add(
                  const GetAllAdminCategoryEvent.getAllCategories(
                    isNotLoading: false,
                  ),
                );
              },
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
