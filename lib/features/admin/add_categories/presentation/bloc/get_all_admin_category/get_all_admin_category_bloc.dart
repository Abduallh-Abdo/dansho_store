import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:dansho_store/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_admin_category_event.dart';
part 'get_all_admin_category_state.dart';
part 'get_all_admin_category_bloc.freezed.dart';

class GetAllAdminCategoryBloc
    extends Bloc<GetAllAdminCategoryEvent, GetAllAdminCategoryState> {
  GetAllAdminCategoryBloc({required this.categoryAdminRepo})
    : super(GetAllAdminCategoryState.loading()) {
    on<GetAllAdminCategoryEvent>(_getAllAdminCategories);
  }
  final CategoriesAdminRepo categoryAdminRepo;

  FutureOr<void> _getAllAdminCategories(
    GetAllAdminCategoryEvent event,
    Emitter<GetAllAdminCategoryState> emit,
  ) async {
    emit(const GetAllAdminCategoryState.loading());
    final result = await categoryAdminRepo.getAllAdminCategories();

    result.when(
      success: (data) {
        if (data.getAllCategoriesList.isEmpty) {
          emit(const GetAllAdminCategoryState.empty());
        } else {
          emit(GetAllAdminCategoryState.success(data: data));
        }
      },
      failure: (errorHandler) {
        emit(GetAllAdminCategoryState.error(error: errorHandler));
      },
    );
  }
}
