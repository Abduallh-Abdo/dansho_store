import 'package:dansho_store/core/app/upload_image/data_source/upload_image_data_source.dart';
import 'package:dansho_store/core/app/upload_image/models/upload_image_response.dart';
import 'package:dansho_store/core/di/get_it.dart';
import 'package:dansho_store/core/service/graphql/api_result.dart';
import 'package:dansho_store/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageRepo {
  const new({required this._uploadImageDataSource});

  final UploadImageDataSource _uploadImageDataSource;

  Future<ApiResult<UploadImageResponse>> uploadImage({
    required XFile imageFile,
  }) async {
    try {
      final response = await _uploadImageDataSource.uploadImage(
        imageFile: imageFile,
      );
      return ApiResult.success(response);
    } catch (e) {
      final context = sl<GlobalKey<NavigatorState>>().currentState!.context;
      return ApiResult.failure(S.of(context).error);
    }
  }
}
