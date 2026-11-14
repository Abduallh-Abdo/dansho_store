import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/common/toast/show_toast.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateUploadImage extends StatelessWidget {
  const new({required this.imageUrl, super.key});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () {
            ShowToast.showToastSuccess(message: S.of(context).image_uploaded);
          },
          error: (error) {
            ShowToast.showToastSuccess(message: error);
          },
        );
      },
      builder: (context, state) {
        final cubit = context.read<UploadImageCubit>();
        return state.maybeWhen(
          loading: () {
            return Container(
              height: 120.h,
              width: context.width,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.8),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: CircularProgressIndicator(color: Colors.white),
              ),
            );
          },
          orElse: () {
            return InkWell(
              onTap: () {
                cubit.uploadImage();
              },
              child: Stack(
                children: [
                  Container(
                    height: 120.h,
                    width: context.width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          cubit.getImageUrl.isEmpty
                              ? imageUrl
                              : cubit.getImageUrl,
                        ),
                      ),
                    ),
                  ),

                  if (cubit.getImageUrl.isEmpty)
                    Container(
                      height: 120.h,
                      width: context.width,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add_a_photo_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
