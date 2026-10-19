import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_number_event.dart';
part 'users_number_state.dart';
part 'users_number_bloc.freezed.dart';

class UsersNumberBloc extends Bloc<UsersNumberEvent, UsersNumberState> {
  UsersNumberBloc({required this.dashboardRepo})
    : super(const UsersNumberState.loading()) {
    on<UsersNumberEvent>(_getUsersNumber);
  }
  final DashboardRepo dashboardRepo;

  FutureOr<void> _getUsersNumber(
    UsersNumberEvent event,
    Emitter<UsersNumberState> emit,
  ) async {
    emit(const UsersNumberState.loading());

    final result = await dashboardRepo.numberOfUsers();
    result.when(
      success: (data) =>
          emit(UsersNumberState.success(number: data.usersNumber)),
      failure: (errorHandler) =>
          emit(UsersNumberState.error(error: errorHandler)),
    );
  }
}
