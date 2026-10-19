import 'package:freezed_annotation/freezed_annotation.dart';
part 'categories_number_responase.g.dart';

@JsonSerializable()
class CategoriesNumberResponse {
  final CategoriesNumberData data;
  CategoriesNumberResponse({required this.data});

  factory CategoriesNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberResponseFromJson(json);

  String get categoriesNumber {
    if (data.categoriesList.isEmpty) {
      return '0';
    } else {
      return data.categoriesList.length.toString();
    }
  }
}

@JsonSerializable()
class CategoriesNumberData {
  @JsonKey(name: 'categories')
  final List<CategoriesNumberModel> categoriesList;
  CategoriesNumberData({required this.categoriesList});

  factory CategoriesNumberData.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberDataFromJson(json);
}

@JsonSerializable()
class CategoriesNumberModel {
  @JsonKey(name: 'name')
  final String? name;
  CategoriesNumberModel({required this.name});
  factory CategoriesNumberModel.fromJson(Map<String, dynamic> json) =>
      _$CategoriesNumberModelFromJson(json);
}
