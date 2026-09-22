import 'dart:developer';

import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dansho_store/core/service/graphql/graphql_queries/auth/auth_queries.dart';
import 'package:dansho_store/features/auth/data/models/login_request_body.dart';
import 'package:dansho_store/features/auth/data/models/login_response.dart';
import 'package:dansho_store/features/auth/data/models/user_role_response.dart';
import 'package:dio/dio.dart';

class AuthDataSource {
  new({required this._apiService});

  final ApiService _apiService;

  // Login
  Future<LoginResponse> login({required LoginRequestBody body}) async {
    final reponse = await _apiService.login(
      AuthQueries().loginMapQuery(body: body),
    );
    return reponse;
  }

  //User Role
  Future<UserRoleResponse> userRole({required String token}) async {
    final dio = Dio();
    dio.options.headers['Authorization'] = 'Bearer $token';
    final client = ApiService(dio);
    final reponse = await client.userRole();
    log('User Role Response: ${reponse.userRole}');
    return reponse;
  }
}
