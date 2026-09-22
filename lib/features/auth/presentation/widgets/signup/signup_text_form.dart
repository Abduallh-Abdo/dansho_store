import 'package:dansho_store/core/common/animations/animate_do.dart';
import 'package:dansho_store/core/common/widgets/custom_text_field.dart';
import 'package:dansho_store/core/extensions/context_ext.dart';
import 'package:dansho_store/core/utils/app_regex.dart';
import 'package:dansho_store/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupTextForm extends StatefulWidget {
  const new({super.key});

  @override
  State<SignupTextForm> createState() => _SignupTextFormState();
}

class _SignupTextFormState extends State<SignupTextForm> {
  bool isObscure = true;
  late final AuthBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<AuthBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _bloc.emailController.dispose();
    _bloc.passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _bloc.formKey,
      child: Column(
        children: [
          // Full name
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: _bloc.nameController,
              hintText: S.of(context).full_name,
              keyboardType: TextInputType.name,
              validator: (value) {
                if (value!.isEmpty || value.length < 3) {
                  return S.of(context).valid_name;
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 25.h),
          // Your email
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: _bloc.emailController,
              hintText: S.of(context).your_email,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (!AppRegex.isEmailValid(_bloc.emailController.text)) {
                  return S.of(context).valid_email;
                }
                return null;
              },
            ),
          ),
          SizedBox(height: 25.h),
          // Password
          CustomFadeInRight(
            duration: 400,
            child: CustomTextField(
              controller: _bloc.passwordController,
              hintText: S.of(context).password,
              keyboardType: TextInputType.visiblePassword,
              validator: (value) {
                if (value!.isEmpty || value.length < 6) {
                  return S.of(context).valid_email;
                }
                return null;
              },

              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                icon: Icon(
                  isObscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                ),
                color: context.color.textColor,
              ),
              obscureText: isObscure,
            ),
          ),
        ],
      ),
    );
  }
}
