import 'package:dansho_store/core/app/cubit/app_cubit.dart';
import 'package:dansho_store/core/common/animations/animate_do.dart';
import 'package:dansho_store/core/common/widgets/custom_linear_button.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DarkAndLangButton extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: cubit.changeThemeMode,
                child: Icon(
                  cubit.isDark
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        CustomFadeInLeft(
          duration: 400,
          child: CustomLinearButton(
            width: 100.w,
            height: 44.h,
            onPressed: () {
              if (cubit.currentLang == 'en') {
                cubit.toArabic();
              } else {
                cubit.toEnglish();
              }
            },
            child: TextApp(
              text: S.of(context).language,
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontWeightHelper.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
