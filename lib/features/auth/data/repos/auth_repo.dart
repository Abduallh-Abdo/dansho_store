import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/core/utils/app_strings.dart';
import 'package:dansho_store/features/auth/data/data_source/auth_data_source.dart';
import 'package:dansho_store/features/auth/data/models/login_request_body.dart';
import 'package:dansho_store/features/auth/data/models/login_response.dart';
import 'package:dansho_store/features/auth/data/models/user_role_response.dart';

class AuthRepo {
  const AuthRepo({required this._authDataSource});
  final AuthDataSource _authDataSource;

  // login
  Future<ApiResult<LoginResponse>> login({
    required LoginRequestBody body,
  }) async {
    try {
      final response = await _authDataSource.login(body: body);
      return ApiResult.success(response);
    } catch (e) {
      return const ApiResult.failure(errorMessage);
    }
  }

  // user role
  Future<UserRoleResponse> userRole({required String token}) async {
    final response = await _authDataSource.userRole(token: token);
    return response;
  }
}
