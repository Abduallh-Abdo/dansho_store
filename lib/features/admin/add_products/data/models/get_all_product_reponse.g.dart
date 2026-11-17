// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_product_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllProductReponse _$GetAllProductReponseFromJson(
  Map<String, dynamic> json,
) => GetAllProductReponse(
  data: GetAllProductReponseData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetAllProductReponseToJson(
  GetAllProductReponse instance,
) => <String, dynamic>{'data': instance.data};

GetAllProductReponseData _$GetAllProductReponseDataFromJson(
  Map<String, dynamic> json,
) => GetAllProductReponseData(
  productsList: (json['products'] as List<dynamic>)
      .map((e) => GetAllProductReponseModel.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$GetAllProductReponseDataToJson(
  GetAllProductReponseData instance,
) => <String, dynamic>{'products': instance.productsList};

GetAllProductReponseModel _$GetAllProductReponseModelFromJson(
  Map<String, dynamic> json,
) => GetAllProductReponseModel(
  id: json['id'] as String?,
  title: json['title'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  description: json['description'] as String?,
  images: (json['images'] as List<dynamic>).map((e) => e as String).toList(),
  category: json['category'] == null
      ? null
      : CategoryProductModel.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetAllProductReponseModelToJson(
  GetAllProductReponseModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'price': instance.price,
  'description': instance.description,
  'images': instance.images,
  'category': instance.category,
};

CategoryProductModel _$CategoryProductModelFromJson(
  Map<String, dynamic> json,
) => CategoryProductModel(
  name: json['name'] as String?,
  id: json['id'] as String?,
);

Map<String, dynamic> _$CategoryProductModelToJson(
  CategoryProductModel instance,
) => <String, dynamic>{'name': instance.name, 'id': instance.id};
