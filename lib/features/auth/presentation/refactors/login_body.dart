import 'package:dansho_store/core/common/animations/animate_do.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:dansho_store/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:dansho_store/features/auth/presentation/widgets/login/login_button.dart';
import 'package:dansho_store/features/auth/presentation/widgets/login/login_text_form.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // Dark & lang
            const DarkAndLangButton(),
            const SizedBox(height: 50),

            // login title & subtitle
            const AuthTitleInfo(),
            SizedBox(height: 30.h),

            // login form
            const LoginTextForm(),
            SizedBox(height: 30.h),

            // login button
            const LoginButton(),
            SizedBox(height: 30.h),

            // Go to Signup Screen Text
            CustomFadeInDown(
              duration: 600,
              child: TextApp(
                text: S.of(context).create_account,
                theme: context.textStyle.copyWith(
                  fontSize: 16.sp,
                  fontWeight: FontWeightHelper.bold,
                  color: context.color.bluePinkLight,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
