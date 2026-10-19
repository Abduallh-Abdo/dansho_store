import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/graphql_queries/admin/dashbord_queries.dart';
import 'package:dansho_store/features/admin/dashboard/data/models/categories_number_responase.dart';
import 'package:dansho_store/features/admin/dashboard/data/models/products_number_responase.dart';
import 'package:dansho_store/features/admin/dashboard/data/models/users_number_responase.dart';

class DashboardDataSource {
  new({required this._apiService});

  final ApiService _apiService;

  Future<ProductsNumberResponse> numberOfProducts() async {
    final response = await _apiService.numberOfProducts(
      DashbordQueries().numberofProductsMapQuery(),
    );
    return response;
  }

  Future<CategoriesNumberResponse> numberOfCategories() async {
    final response = await _apiService.numberOfCategories(
      DashbordQueries().numberofCategoriesMapQuery(),
    );
    return response;
  }

  Future<UsersNumberResponse> numberOfUsers() async {
    final response = await _apiService.numberOfUsers(
      DashbordQueries().numberofUsersMapQuery(),
    );
    return response;
  }
}
