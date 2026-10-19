import 'dart:async';

import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/dashboard/data/repos/dashboard_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_number_event.dart';
part 'products_number_state.dart';
part 'products_number_bloc.freezed.dart';

class ProductsNumberBloc
    extends Bloc<ProductsNumberEvent, ProductsNumberState> {
  ProductsNumberBloc({required this.dashboardRepo})
    : super(const ProductsNumberState.loading()) {
    on<ProductsNumberEvent>(_getProductsNumber);
  }
  final DashboardRepo dashboardRepo;

  FutureOr<void> _getProductsNumber(
    ProductsNumberEvent event,
    Emitter<ProductsNumberState> emit,
  ) async {
    emit(const ProductsNumberState.loading());
    final result = await dashboardRepo.numberOfProducts();
    result.when(
      success: (data) =>
          emit(ProductsNumberState.success(number: data.productsNumber)),
      failure: (errorHandler) =>
          emit(ProductsNumberState.error(error: errorHandler)),
    );
  }
}
