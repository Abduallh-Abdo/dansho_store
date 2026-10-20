import 'package:bloc/bloc.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:dansho_store/features/admin/add_categories/data/repo/category_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_admin_category_event.dart';
part 'get_all_admin_category_state.dart';
part 'get_all_admin_category_bloc.freezed.dart';

class GetAllAdminCategoryBloc
    extends Bloc<GetAllAdminCategoryEvent, GetAllAdminCategoryState> {
  GetAllAdminCategoryBloc({required this.categoryRepo})
    : super(GetAllAdminCategoryState.loading()) {
    on<GetAllAdminCategoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final CategoryRepo categoryRepo;
}
