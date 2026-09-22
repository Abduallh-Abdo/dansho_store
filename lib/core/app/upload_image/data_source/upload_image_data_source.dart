import 'package:dansho_store/core/app/upload_image/models/upload_image_response.dart';
import 'package:dansho_store/core/service/graphql/api_service.dart';
import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';

class UploadImageDataSource {
  const new({required this._apiService});

  final ApiService _apiService;

  Future<UploadImageResponse> uploadImage({required XFile imageFile}) async {
    final image = await MultipartFile.fromFile(imageFile.path);
    final imageFileData = FormData.fromMap({'file': image});
    final response = await _apiService.uploadImage(imageFileData);
    return response;
  }
}
