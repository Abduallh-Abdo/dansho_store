import 'package:dansho_store/core/common/animations/animate_do.dart';
import 'package:dansho_store/core/common/widgets/text_app.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/routes/app_routes.dart';
import 'package:dansho_store/core/styles/fonts/font_weight_helper.dart';
import 'package:dansho_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:dansho_store/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:dansho_store/features/auth/presentation/widgets/signup/signup_button.dart';
import 'package:dansho_store/features/auth/presentation/widgets/signup/signup_text_form.dart';
import 'package:dansho_store/features/auth/presentation/widgets/signup/user_avatar_image.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupBody extends StatelessWidget {
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
            SizedBox(height: 30.h),

            // Signup title & subtitle
            AuthTitleInfo(
              title: S.of(context).sign_up,
              subtitle: S.of(context).sign_up_welcome,
            ),
            SizedBox(height: 25.h),

            //User Avatar Image
            const UserAvatarImage(),
            SizedBox(height: 16.h),

            // Signup form
            const SignupTextForm(),
            SizedBox(height: 25.h),

            // Signup button
            const SignupButton(),
            SizedBox(height: 25.h),

            // Go to Login Screen Text
            CustomFadeInDown(
              duration: 600,
              child: TextButton(
                onPressed: () {
                  context.pushNamed(Routes.login);
                },
                child: TextApp(
                  text: S.of(context).you_have_account,
                  theme: context.textStyle.copyWith(
                    fontSize: 16.sp,
                    fontWeight: FontWeightHelper.bold,
                    color: context.color.bluePinkLight,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
