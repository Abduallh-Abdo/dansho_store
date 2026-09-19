import 'package:dansho_store/features/auth/presentation/widgets/auth_title_info.dart';
import 'package:dansho_store/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            // Dark & lang
            DarkAndLangButton(),
            SizedBox(height: 50),
            // login title & subtitle
            AuthTitleInfo(),
          ],
        ),
      ),
    );
  }
}
