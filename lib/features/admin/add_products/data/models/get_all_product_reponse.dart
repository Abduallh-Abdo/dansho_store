import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_all_product_reponse.g.dart';

@JsonSerializable()
class GetAllProductReponse {
  new({required this.data});

  final GetAllProductReponseData data;

  factory GetAllProductReponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductReponseFromJson(json);

  List<GetAllProductReponseModel> get getAllProductsList {
    if (data.productsList.isEmpty) {
      return [];
    } else {
      return data.productsList.toList();
    }
  }
}

@JsonSerializable()
class GetAllProductReponseData {
  new({required this.productsList});
  @JsonKey(name: 'products')
  final List<GetAllProductReponseModel> productsList;

  factory GetAllProductReponseData.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductReponseDataFromJson(json);
}

@JsonSerializable()
class GetAllProductReponseModel {
  new({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.category,
  });

  final String? id;
  final String? title;
  final int? price;
  final String? description;
  final List<String> images;
  final CategoryProductModel? category;

  factory GetAllProductReponseModel.fromJson(Map<String, dynamic> json) =>
      _$GetAllProductReponseModelFromJson(json);
}

@JsonSerializable()
class CategoryProductModel {
  new({required this.name, required this.id});
  final String? name;
  final String? id;

  factory CategoryProductModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductModelFromJson(json);
}
