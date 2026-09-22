// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignupRepsonse _$SignupRepsonseFromJson(Map<String, dynamic> json) =>
    SignupRepsonse(
      data: SignupDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignupRepsonseToJson(SignupRepsonse instance) =>
    <String, dynamic>{'data': instance.data};

SignupDataModel _$SignupDataModelFromJson(Map<String, dynamic> json) =>
    SignupDataModel(
      addUser: SignupAddUserModel.fromJson(
        json['addUser'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SignupDataModelToJson(SignupDataModel instance) =>
    <String, dynamic>{'addUser': instance.addUser};

SignupAddUserModel _$SignupAddUserModelFromJson(Map<String, dynamic> json) =>
    SignupAddUserModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$SignupAddUserModelToJson(SignupAddUserModel instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
