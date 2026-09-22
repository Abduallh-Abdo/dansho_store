import 'package:dansho_store/features/auth/data/models/login_request_body.dart';
import 'package:dansho_store/features/auth/data/models/signup_request_body.dart';

class AuthQueries {
  factory AuthQueries() => _instance;

  const AuthQueries._();
  static const AuthQueries _instance = AuthQueries._();

  Map<String, dynamic> loginMapQuery({required LoginRequestBody body}) {
    return {
      'query': r'''
      mutation Login($email: String!, $password: String!) {
        login(email: $email, password: $password) {
          access_token
          refresh_token
        }
      }
    ''',
      'variables': {'email': body.email, 'password': body.password},
    };
  }

  Map<String, dynamic> signupMapQuery({required SignupRequestBody body}) {
    return {
      'query': r'''
      mutation Signup(
        $name: String!
        $email: String!
        $password: String!
        $avatar: String!
      ) {
        addUser(
          data: {
            name: $name
            email: $email
            password: $password
            avatar: $avatar
            role: customer
          }
        ) {
          id
          email
          name
          role
          avatar
        }
      }
    ''',
      'variables': {
        'name': body.name,
        'email': body.email,
        'password': body.password,
        'avatar': body.avatar,
      },
    };
  }
}
