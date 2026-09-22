import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/core/service/shared_prefs/prefs_keys.dart';
import 'package:dansho_store/core/service/shared_prefs/shared_pref.dart';
import 'package:dansho_store/features/auth/data/models/login_request_body.dart';
import 'package:dansho_store/features/auth/data/repos/auth_repo.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required this._authRepo}) : super(const _Initial()) {
    on<LoginEvent>(_login);
  }
  final AuthRepo _authRepo;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  FutureOr<void> _login(LoginEvent event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    final result = await _authRepo.login(
      body: LoginRequestBody(
        email: emailController.text.trim(),
        password: passwordController.text,
      ),
    );
    result.when(
      success: (data) async {
        final token = data.data.login.accessToken;
        await SharedPref().setString(PrefKeys.accessToken, token!);
        final user = await _authRepo.userRole(
          token: data.data.login.accessToken!,
        );
        await SharedPref().setInt(PrefKeys.userId, user.userId ?? 0);
        await SharedPref().setString(PrefKeys.userRole, user.userRole ?? '');
        emit(AuthState.success(userRole: user.userRole!));
      },
      failure: (errorHandler) {
        emit(AuthState.error(errMessage: errorHandler));
      },
    );
  }
}
