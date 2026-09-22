import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/common/animations/animate_do.dart';
import 'package:dansho_store/core/common/toast/show_toast.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/images/assets_manager.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAvatarImage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<UploadImageCubit, UploadImageState>(
      listener: (context, state) {
        state.whenOrNull(
          success: () => ShowToast.showToastSuccessTop(
            message: S.of(context).image_uploaded,
            seconds: 2,
          ),
          removeImage: (imageUrl) => ShowToast.showToastSuccessTop(
            message: S.of(context).image_removed,
            seconds: 2,
          ),
          error: (errMessage) =>
              ShowToast.showToastErrorTop(seconds: 2, message: errMessage),
        );
      },
      builder: (context, state) {
        final isImageUploaded = context
            .read<UploadImageCubit>()
            .getImageUrl
            .isNotEmpty;
        return state.maybeWhen(
          loading: () {
            return CircleAvatar(
              radius: 38.r,
              backgroundImage: const AssetImage(Assets.imagesCustomerUser),
              child: Center(
                child: CircularProgressIndicator(
                  color: context.color.mainColor,
                ),
              ),
            );
          },
          orElse: () {
            return CustomFadeInDown(
              duration: 500,
              child: CircleAvatar(
                radius: 38.r,
                backgroundColor: Colors.grey.withOpacity(0.1),
                backgroundImage: isImageUploaded
                    ? NetworkImage(context.read<UploadImageCubit>().getImageUrl)
                    : const AssetImage(Assets.imagesCustomerUser),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (isImageUploaded)
                      Positioned(
                        top: -10.r,
                        right: -15.r,
                        child: IconButton(
                          onPressed: () {
                            context.read<UploadImageCubit>().removeImage();
                          },
                          icon: const Icon(Icons.delete, color: Colors.red),
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                    Container(
                      height: 100.r,
                      width: 100.r,
                      decoration: BoxDecoration(
                        color: isImageUploaded
                            ? Colors.transparent
                            : Colors.black.withOpacity(0.5),
                        shape: BoxShape.circle,
                      ),
                    ),
                    if (!isImageUploaded)
                      IconButton(
                        onPressed: () {
                          context.read<UploadImageCubit>().uploadImage();
                        },
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      )
                    else
                      const SizedBox.shrink(),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
