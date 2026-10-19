import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'categories_number_event.dart';
part 'categories_number_state.dart';
part 'categories_number_bloc.freezed.dart';

class CategoriesNumberBloc
    extends Bloc<CategoriesNumberEvent, CategoriesNumberState> {
  CategoriesNumberBloc({required this.dashboardRepo})
    : super(const CategoriesNumberState.loading()) {
    on<CategoriesNumberEvent>(_getCategoriesNumber);
  }
  final DashboardRepo dashboardRepo;

  FutureOr<void> _getCategoriesNumber(
    CategoriesNumberEvent event,
    Emitter<CategoriesNumberState> emit,
  ) async {
        emit(const CategoriesNumberState.loading());

    final result = await dashboardRepo.numberOfCategories();
    result.when(
      success: (data) =>
          emit(CategoriesNumberState.success(number: data.categoriesNumber)),
      failure: (errorHandler) =>
          emit(CategoriesNumberState.error(error: errorHandler)),
    );
  }
}
