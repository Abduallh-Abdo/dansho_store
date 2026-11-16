import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_event.dart';
part 'create_category_state.dart';
part 'create_category_bloc.freezed.dart';

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  CreateCategoryBloc({required this.categoryAdminRepo}) : super(_Initial()) {
    on<CreateNewCategoryEvent>(_createCategory);
  }

  final CategoriesAdminRepo categoryAdminRepo;
  FutureOr<void> _createCategory(
    CreateNewCategoryEvent event,
    Emitter<CreateCategoryState> emit,
  ) async {
    emit(const CreateCategoryState.loading());
    final result = await categoryAdminRepo.createCategory(body: event.body);

    result.when(
      success: (data) {
        emit(const CreateCategoryState.success());
      },
      failure: (errorHandler) {
        emit(CreateCategoryState.error(error: errorHandler));
      },
    );
  }
}
