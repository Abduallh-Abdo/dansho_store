import 'package:dansho_store/features/admin/add_categories/data/models/create_category_request_body.dart';

class CategoryQueries {
  const CategoryQueries._();

  factory CategoryQueries() => _instance;

  static const CategoryQueries _instance = CategoryQueries._();

  Map<String, dynamic> getAllCategoriesMapQuery() {
    return {
      'query': '''
       {
         categories {
           name
           id
           image
          }
        }
      ''',
    };
  }

  Map<String, dynamic> categoryMapQuery({
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
}
