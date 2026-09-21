part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = LoadingEvent;
  const factory AuthState.error({required String errMessage}) = ErrorEvent;
  const factory AuthState.success({required String userRole}) = SuccessEvent;
}
