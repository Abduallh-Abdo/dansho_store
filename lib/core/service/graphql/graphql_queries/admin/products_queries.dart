import 'package:dansho_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/update_category_request_body.dart';

class ProductsQueries {
  const ProductsQueries._();

  factory ProductsQueries() => _instance;

  static const ProductsQueries _instance = ProductsQueries._();

  Map<String, dynamic> getAllProductsMapQuery() {
    return {
      'query': '''
       {
         products {
           id
           title
           price
           images
           description

           category {
             id
             name
           }
          }
        }
      ''',
    };
  }

  Map<String, dynamic> createMapQuery({
    required CreateCategoryRequestBody body,
  }) {
    return {
      'query': r'''
       mutation Create($name: String!, $image: String!) {
         addCategory(
         data: {name: $name, image: $image}
         ) {
           name
           id
           image
          }
        }
      ''',
      'variables': {'name': body.name, 'image': body.image},
    };
  }

  Map<String, dynamic> deleteMapQuery({required String categoryId}) {
    return {
      'query': r'''
       mutation Delete($categoryId: ID!) {
         deleteCategory(id: $categoryId)
        }
      ''',
      'variables': {'categoryId': categoryId},
    };
  }

  Map<String, dynamic> updateMapQuery({
    required UpdateCategoryRequestBody body,
  }) {
    return {
      'query': r'''
       mutation Update($id: ID!, $name: String!, $image: String!) {
         updateCategory(id: $id, changes: {name: $name, image: $image}) {
           id
          }
        }
      ''',
      'variables': {'id': body.id, 'name': body.name, 'image': body.image},
    };
  }
}
