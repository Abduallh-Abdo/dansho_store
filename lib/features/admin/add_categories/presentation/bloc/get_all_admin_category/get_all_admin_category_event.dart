part of 'get_all_admin_category_bloc.dart';

@freezed
class GetAllAdminCategoryEvent with _$GetAllAdminCategoryEvent {
  const factory GetAllAdminCategoryEvent.started() = _Started;
  const factory GetAllAdminCategoryEvent.getAllCategories() =
      GetAllCategoriesEvent;
}
