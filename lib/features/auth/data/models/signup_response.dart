import 'package:freezed_annotation/freezed_annotation.dart';
part 'signup_response.g.dart';

@JsonSerializable()
class SignupRepsonse {
  const new({required this.data});

  final SignupDataModel data;
  factory SignupRepsonse.fromJson(Map<String, dynamic> json) =>
      _$SignupRepsonseFromJson(json);
}

@JsonSerializable()
class SignupDataModel {
  const new({required this.addUser});

  final SignupAddUserModel addUser;
  factory SignupDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignupDataModelFromJson(json);
}

@JsonSerializable()
class SignupAddUserModel {

  factory SignupAddUserModel.fromJson(Map<String, dynamic> json) =>
      _$SignupAddUserModelFromJson(json);
  const new({required this.id, required this.name});

  final String? id;
  final String? name;
}
