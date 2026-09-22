import 'package:dansho_store/core/app/upload_image/cubit/upload_image_cubit.dart';
import 'package:dansho_store/core/common/animations/animate_do.dart';
import 'package:dansho_store/core/common/toast/show_toast.dart';
import 'package:dansho_store/core/common/widgets/custom_linear_button.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/routes/app_routes.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (errMessage) =>
              ShowToast.showToastError(message: S.of(context).logged_error),
          success: (_) async {
            ShowToast.showToastSuccess(
              message: S.of(context).logged_successfully,
            );
            await context.pushNamedAndRemoveUntil(
              Routes.customer,
              predicate: (_) => false,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: () {
            return CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                width: double.infinity,
                height: 44.h,
                onPressed: () {},
                child: const CircularProgressIndicator(color: Colors.white),
              ),
            );
          },
          orElse: () {
            return CustomFadeInRight(
              duration: 500,
              child: CustomLinearButton(
                width: double.infinity,
                height: 44.h,
                onPressed: () {
                  _validateThenDoSignUp(context);
                },
                child: TextApp(
                  text: S.of(context).sign_up,
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.textColor,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  void _validateThenDoSignUp(BuildContext context) {
    final authBloc = context.read<AuthBloc>();
    final imageCubit = context.read<UploadImageCubit>();

    if (!authBloc.formKey.currentState!.validate() ||
        imageCubit.getImageUrl.isEmpty) {
      if (imageCubit.getImageUrl.isEmpty) {
        ShowToast.showToastError(message: S.of(context).valid_pick_image);
      }
    } else {
      context.read<AuthBloc>().add(
        AuthEvent.signup(imageUrl: imageCubit.getImageUrl),
      );
    }
  }
}
