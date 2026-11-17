import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:dansho_store/features/admin/add_products/data/repo/product_admin_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_admin_products_event.dart';
part 'get_all_admin_products_state.dart';
part 'get_all_admin_products_bloc.freezed.dart';

class GetAllAdminProductsBloc
    extends Bloc<GetAllAdminProductsEvent, GetAllAdminProductsState> {
  GetAllAdminProductsBloc({required this.productAdminRepo})
    : super(const GetAllAdminProductsState.loading()) {
    on<FetchAllAdminProductEvent>(getAllProducts);
  }
  final ProductAdminRepo productAdminRepo;

  FutureOr<void> getAllProducts(
    FetchAllAdminProductEvent event,
    Emitter<GetAllAdminProductsState> emit,
  ) async {
    if (event.isNotLoading) {
      emit(const GetAllAdminProductsState.loading());
    }
    final result = await productAdminRepo.getAllAdminCategories();
    
    result.when(
      success: (data) {
        if (data.getAllProductsList.isEmpty) {
          emit(const GetAllAdminProductsState.empty());
        } else {
          emit(
            GetAllAdminProductsState.success(productList: data.getAllProductsList),
          );
        }
      },
      failure: (errorHandler) {
        emit(GetAllAdminProductsState.error(errorMessage: errorHandler));
      },
    );
  }
}
