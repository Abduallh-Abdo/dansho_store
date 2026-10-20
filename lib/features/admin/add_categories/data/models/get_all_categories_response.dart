import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_all_categories_response.g.dart';

@JsonSerializable()
class GetAllCategoriesResponse {
  final GetAllCategoriesResponseCategoriesData data;
  GetAllCategoriesResponse({required this.data});

  factory GetAllCategoriesResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllCategoriesResponseFromJson(json);

  List<GetAllCategoriesResponseCategoriesModel>
  get GetAllCategoriesResponsecategories {
    if (data.categoriesList.isEmpty) {
      return [];
    } else {
      return data.categoriesList;
    }
  }
}

@JsonSerializable()
class GetAllCategoriesResponseCategoriesData {
  @JsonKey(name: 'categories')
  final List<GetAllCategoriesResponseCategoriesModel> categoriesList;
  GetAllCategoriesResponseCategoriesData({required this.categoriesList});

  factory GetAllCategoriesResponseCategoriesData.fromJson(
    Map<String, dynamic> json,
  ) => _$GetAllCategoriesResponseCategoriesDataFromJson(json);
}

@JsonSerializable()
class GetAllCategoriesResponseCategoriesModel {
  @JsonKey(name: 'name')
  final String? name;
  @JsonKey(name: 'id')
  final String? id;
  @JsonKey(name: 'image')
  final String? image;
  GetAllCategoriesResponseCategoriesModel({
    required this.name,
    required this.id,
    required this.image,
  });
  factory GetAllCategoriesResponseCategoriesModel.fromJson(
    Map<String, dynamic> json,
  ) => _$GetAllCategoriesResponseCategoriesModelFromJson(json);
}
