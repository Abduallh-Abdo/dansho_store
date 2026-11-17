part of 'get_all_admin_products_bloc.dart';

@freezed
class GetAllAdminProductsState with _$GetAllAdminProductsState {
    const factory GetAllAdminProductsState.loading() = LoadingState;
  const factory GetAllAdminProductsState.empty() = emptyState;
  const factory GetAllAdminProductsState.success({
    required List<GetAllProductReponseModel> productList,
  }) = SuccessState;
  const factory GetAllAdminProductsState.error({required String errorMessage}) =
      ErrorState;
}
