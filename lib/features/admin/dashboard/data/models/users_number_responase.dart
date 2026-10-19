import 'package:freezed_annotation/freezed_annotation.dart';
part 'users_number_responase.g.dart';

@JsonSerializable()
class UsersNumberResponse {
  final UsersNumberData data;
  UsersNumberResponse({required this.data});

  factory UsersNumberResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberResponseFromJson(json);

  String get usersNumber {
    if (data.usersList.isEmpty) {
      return '0';
    } else {
      return data.usersList.length.toString();
    }
  }
}

@JsonSerializable()
class UsersNumberData {
  @JsonKey(name: 'users')
  final List<UsersNumberModel> usersList;
  UsersNumberData({required this.usersList});

  factory UsersNumberData.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberDataFromJson(json);
}

@JsonSerializable()
class UsersNumberModel {
  @JsonKey(name: 'name')
  final String? name;
  UsersNumberModel({required this.name});

  factory UsersNumberModel.fromJson(Map<String, dynamic> json) =>
      _$UsersNumberModelFromJson(json);
}
