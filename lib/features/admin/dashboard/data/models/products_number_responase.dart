import 'package:freezed_annotation/freezed_annotation.dart';
part 'products_number_responase.g.dart';

@JsonSerializable()
class ProductsNumberResponse {
  final ProductsNumberData data;
  ProductsNumberResponse({required this.data});

  factory ProductsNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberResponseFromJson(json);

  String get productsNumber {
    if (data.productsList.isEmpty) {
      return '0';
    } else {
      return data.productsList.length.toString();
    }
  }
}

@JsonSerializable()
class ProductsNumberData {
  @JsonKey(name: 'products')
  final List<ProductsNumberModel> productsList;
  ProductsNumberData({required this.productsList});

  factory ProductsNumberData.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberDataFromJson(json);
}

@JsonSerializable()
class ProductsNumberModel {
  @JsonKey(name: 'title')
  final String? title;
  ProductsNumberModel({required this.title});
  factory ProductsNumberModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsNumberModelFromJson(json);
}
