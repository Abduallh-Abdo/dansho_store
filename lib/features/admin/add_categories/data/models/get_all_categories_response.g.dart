// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_categories_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllCategoriesResponse _$GetAllCategoriesResponseFromJson(
  Map<String, dynamic> json,
) => GetAllCategoriesResponse(
  data: GetAllCategoriesResponseCategoriesData.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$GetAllCategoriesResponseToJson(
  GetAllCategoriesResponse instance,
) => <String, dynamic>{'data': instance.data};

GetAllCategoriesResponseCategoriesData
_$GetAllCategoriesResponseCategoriesDataFromJson(Map<String, dynamic> json) =>
    GetAllCategoriesResponseCategoriesData(
      categoriesList: (json['categories'] as List<dynamic>)
          .map(
            (e) => GetAllCategoriesResponseCategoriesModel.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$GetAllCategoriesResponseCategoriesDataToJson(
  GetAllCategoriesResponseCategoriesData instance,
) => <String, dynamic>{'categories': instance.categoriesList};

GetAllCategoriesResponseCategoriesModel
_$GetAllCategoriesResponseCategoriesModelFromJson(Map<String, dynamic> json) =>
    GetAllCategoriesResponseCategoriesModel(
      name: json['name'] as String?,
      id: json['id'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$GetAllCategoriesResponseCategoriesModelToJson(
  GetAllCategoriesResponseCategoriesModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'image': instance.image,
};
