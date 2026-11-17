import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/features/admin/add_products/data/data_source/product_data_soucre.dart';
import 'package:dansho_store/features/admin/add_products/data/models/get_all_product_reponse.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';

class ProductAdminRepo {
  new({required this._dataSource});

  final ProductDataSoucre _dataSource;

  //? get all admin products
  Future<ApiResult<GetAllProductReponse>> getAllAdminCategories() async {
    try {
      final response = await _dataSource.getAllProducts();
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }
}
