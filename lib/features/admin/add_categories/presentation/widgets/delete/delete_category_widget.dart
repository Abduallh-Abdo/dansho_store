import 'package:dansho_store/core/common/toast/show_toast.dart';
import 'package:dansho_store/core/styles/colors/colors_dark.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/delete_category/delete_category_bloc.dart';
import 'package:dansho_store/features/admin/add_categories/presentation/bloc/get_all_admin_category/get_all_admin_category_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteCategoryWidget extends StatelessWidget {
  const new({super.key, required this.categoryId});
  final String categoryId;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteCategoryBloc, DeleteCategoryState>(
      listener: (context, state) {
        context.read<GetAllAdminCategoryBloc>().add(
          const GetAllAdminCategoryEvent.getAllCategories(isNotLoading: false),
        );
        state.whenOrNull(
          success: () => ShowToast.showToastSuccess(
            message: 'Category deleted successfully',
          ),
          error: (error) => ShowToast.showToastSuccess(message: error),
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () {
            return InkWell(
              onTap: () {
                context.read<DeleteCategoryBloc>().add(
                  DeleteCategoryEvent.deleteCategory(categoryId: categoryId),
                );
              },
              child: Icon(Icons.delete, color: Colors.red, size: 25.sp),
            );
          },

          loading: (id) => id == categoryId
              ? SizedBox(
                  width: 15.w,
                  height: 15.h,
                  child: const CircularProgressIndicator(
                    backgroundColor: ColorsDark.white,
                  ),
                )
              : Icon(Icons.delete, color: Colors.red, size: 25.sp),
        );
      },
    );
  }
}
