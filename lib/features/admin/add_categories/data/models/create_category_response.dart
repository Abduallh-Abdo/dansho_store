import 'package:json_annotation/json_annotation.dart';

part 'create_category_response.g.dart';

@JsonSerializable()
class CreateCategoryResponse {
  final CreateCategoryResponseData data;

  CreateCategoryResponse({required this.data});

  factory CreateCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseFromJson(json);

}

@JsonSerializable()
class CreateCategoryResponseData {
  @JsonKey(name: 'addCategory')
  final CreateCategoryResponseModel categoriesModel;

  CreateCategoryResponseData({required this.categoriesModel});

  factory CreateCategoryResponseData.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseDataFromJson(json);

}

@JsonSerializable()
class CreateCategoryResponseModel {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'image')
  final String? image;

  CreateCategoryResponseModel({
    required this.name,
    required this.id,
    required this.image,
  });

  factory CreateCategoryResponseModel.fromJson(Map<String, dynamic> json) =>
      _$CreateCategoryResponseModelFromJson(json);
}