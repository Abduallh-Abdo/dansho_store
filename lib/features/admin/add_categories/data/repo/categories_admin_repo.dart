import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_categories/data/data_source/category_data_soucre.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/create_category_request_body.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/create_category_response.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/update_category_request_body.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class CategoriesAdminRepo {
  new({required this._dataSource});

  final CategoryDataSoucre _dataSource;

  //? get all admin categories
  Future<ApiResult<GetAllCategoriesResponse>> getAllAdminCategories() async {
    try {
      final response = await _dataSource.getAllCategories();
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }

  //? Create categories
  Future<ApiResult<CreateCategoryResponse>> createCategory({
    required CreateCategoryRequestBody body,
  }) async {
    try {
      final response = await _dataSource.createCategory(body: body);
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }

  //? Delete categories
  Future<ApiResult<void>> deleteCategory({required String categoryId}) async {
    try {
      final response = await _dataSource.deleteCategory(categoryId: categoryId);
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }

  //? Update categories
  Future<ApiResult<void>> updateCategory({
    required UpdateCategoryRequestBody body,
  }) async {
    try {
      final response = await _dataSource.updateCategory(body: body);
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }
}
