import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/dashboard/data/data_source/dashboard_data_source.dart';
import 'package:dansho_store/features/admin/dashboard/data/models/categories_number_responase.dart';
import 'package:dansho_store/features/admin/dashboard/data/models/products_number_responase.dart';
import 'package:dansho_store/features/admin/dashboard/data/models/users_number_responase.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class DashboardRepo {
  new({required this._dataSource});

  final DashboardDataSource _dataSource;
  Future<ApiResult<ProductsNumberResponse>> numberOfProducts() async {
    try {
      final response = await _dataSource.numberOfProducts();
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }

  Future<ApiResult<CategoriesNumberResponse>> numberOfCategories() async {
    try {
      final response = await _dataSource.numberOfCategories();
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }

  Future<ApiResult<UsersNumberResponse>> numberOfUsers() async {
    try {
      final response = await _dataSource.numberOfUsers();
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }
}
