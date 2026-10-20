import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_categories/data/data_source/category_data_soucre.dart';
import 'package:dansho_store/features/admin/add_categories/data/models/get_all_categories_response.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class CategoryRepo {
  new({required this._dataSource});

  final CategoryDataSoucre _dataSource;

  Future<ApiResult<GetAllCategoriesResponse>> numberOfCategories() async {
    try {
      final response = await _dataSource.getAllCategories();
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }
}
