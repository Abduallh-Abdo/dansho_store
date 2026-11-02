import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/graphql_queries/admin/category_queries.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/create_category_response.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/get_all_categories_response.dart';

class CategoryDataSoucre {
  const new({required this._apiService});
  final ApiService _apiService;

  //? Get All Categories
  Future<GetAllCategoriesResponse> getAllCategories() async {
    final response = await _apiService.getAllCategories(
      CategoryQueries().getAllCategoriesMapQuery(),
    );
    return response;
  }

  //? Create Categories

  Future<CreateCategoryResponse> createCategory({
    required CreateCategoryRequestBody body,
  }) async {
    final response = await _apiService.createCategory(
      CategoryQueries().categoryMapQuery(body: body),
    );
    return response;
  }
}
