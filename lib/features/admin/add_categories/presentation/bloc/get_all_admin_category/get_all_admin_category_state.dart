part of 'get_all_admin_category_bloc.dart';

@freezed
class GetAllAdminCategoryState with _$GetAllAdminCategoryState {
  const factory GetAllAdminCategoryState.empty() = EmptyState;
  const factory GetAllAdminCategoryState.loading() = LoadingState;
  const factory GetAllAdminCategoryState.success({
    required GetAllCategoriesResponse data,
  }) = SuccessState;
  const factory GetAllAdminCategoryState.error({required String error}) =
      ErrorState;
}
