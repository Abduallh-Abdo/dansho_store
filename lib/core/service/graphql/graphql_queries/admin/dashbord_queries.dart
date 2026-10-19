class DashbordQueries {
  const DashbordQueries._();

  factory DashbordQueries() => _instance;

  static const DashbordQueries _instance = DashbordQueries._();

  Map<String, dynamic> numberofProductsMapQuery() {
    return {
      'query': '''
       {
         products {
           title
          }
        }
      ''',
    };
  }

  Map<String, dynamic> numberofCategoriesMapQuery() {
    return {
      'query': '''
       {
         categories {
           name
          }
        }
      ''',
    };
  }

  Map<String, dynamic> numberofUsersMapQuery() {
    return {
      'query': '''
       {
         users {
           name
          }
        }
      ''',
    };
  }
}
