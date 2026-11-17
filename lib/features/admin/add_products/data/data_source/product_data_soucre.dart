import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/graphql_queries/admin/products_queries.dart';
import 'package:dansho_store/features/admin/add_products/data/models/get_all_product_reponse.dart';

class ProductDataSoucre {
  const new({required this._apiService});
  final ApiService _apiService;

  //? Get All Product
  Future<GetAllProductReponse> getAllProducts() async {
    final response = await _apiService.getAllProducts(
      ProductsQueries().getAllProductsMapQuery(),
    );
    return response;
  }
}
