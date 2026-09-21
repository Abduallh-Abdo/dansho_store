import 'package:dansho_store/features/auth/data/models/login_request_body.dart';

class AuthQueries {
  factory AuthQueries() => _instance;

  const AuthQueries._();
  static const AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginMapQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
      mutation Login($email: String!, $password: String!) {
        login( 
          email: "$email", password: "$password"
        ) {
          accessToken
          refreshToken
        }
      }
      ''',
      'variables': {'email': body.email, 'password': body.password},
    };
  }
}
