// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCategoryResponse _$CreateCategoryResponseFromJson(
  Map<String, dynamic> json,
) => CreateCategoryResponse(
  data: CreateCategoryResponseData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateCategoryResponseToJson(
  CreateCategoryResponse instance,
) => <String, dynamic>{'data': instance.data};

CreateCategoryResponseData _$CreateCategoryResponseDataFromJson(
  Map<String, dynamic> json,
) => CreateCategoryResponseData(
  categoriesModel: CreateCategoryResponseModel.fromJson(
    json['addCategory'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$CreateCategoryResponseDataToJson(
  CreateCategoryResponseData instance,
) => <String, dynamic>{'addCategory': instance.categoriesModel};

CreateCategoryResponseModel _$CreateCategoryResponseModelFromJson(
  Map<String, dynamic> json,
) => CreateCategoryResponseModel(
  name: json['name'] as String?,
  id: json['id'] as String?,
  image: json['image'] as String?,
);

Map<String, dynamic> _$CreateCategoryResponseModelToJson(
  CreateCategoryResponseModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'image': instance.image,
};
