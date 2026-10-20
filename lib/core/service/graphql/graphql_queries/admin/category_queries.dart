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
}
