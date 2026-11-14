import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_category_event.dart';
part 'update_category_state.dart';
part 'update_category_bloc.freezed.dart';

class UpdateCategoryBloc
    extends Bloc<UpdateCategoryEvent, UpdateCategoryState> {
  UpdateCategoryBloc({required this.categoriesAdminRepo})
    : super(const _Initial()) {
    on<NewUpdateCategoryEvent>(_updateCategory);
  }
  final CategoriesAdminRepo categoriesAdminRepo;
  FutureOr<void> _updateCategory(
    NewUpdateCategoryEvent event,
    Emitter<UpdateCategoryState> emit,
  ) async {
    emit(const UpdateCategoryState.loading());
    final result = await categoriesAdminRepo.updateCategory(body: event.body);
    result.when(
      success: (data) {
        emit(const UpdateCategoryState.success());
      },
      failure: (errorHandler) {
        emit(UpdateCategoryState.error(error: errorHandler));
      },
    );
  }
}
