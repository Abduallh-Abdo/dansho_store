import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_category_event.dart';
part 'delete_category_state.dart';
part 'delete_category_bloc.freezed.dart';

class DeleteCategoryBloc
    extends Bloc<DeleteCategoryEvent, DeleteCategoryState> {
  DeleteCategoryBloc({required this.categoryAdminRepo})
    : super(const _Initial()) {
    on<RemoveCategoryEvent>(_deleteCategory);
  }
  final CategoriesAdminRepo categoryAdminRepo;
  FutureOr<void> _deleteCategory(
    RemoveCategoryEvent event,
    Emitter<DeleteCategoryState> emit,
  ) async {
    emit(const DeleteCategoryState.loading());
    final result = await categoryAdminRepo.deleteCategory(
      categoryId: event.categoryId,
    );

    result.when(
      success: (data) {
        emit(const DeleteCategoryState.success());
      },
      failure: (errorHandler) {
        emit(DeleteCategoryState.error(error: errorHandler));
      },
    );
  }
}
