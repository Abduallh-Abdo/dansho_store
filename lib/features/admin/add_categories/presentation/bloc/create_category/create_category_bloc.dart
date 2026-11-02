import 'package:dansho_store/features/admin/add_categories/data/repo/categories_admin_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_category_event.dart';
part 'create_category_state.dart';
part 'create_category_bloc.freezed.dart';

class CreateCategoryBloc
    extends Bloc<CreateCategoryEvent, CreateCategoryState> {
  CreateCategoryBloc({required this.categoryAdminRepo}) : super(_Initial()) {
    on<CreateCategoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
  final CategoriesAdminRepo categoryAdminRepo;
}
