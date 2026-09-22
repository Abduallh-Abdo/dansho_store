import 'package:freezed_annotation/freezed_annotation.dart';
part 'upload_image_response.g.dart';
@JsonSerializable()
class UploadImageResponse {
  new({required this.location});
  @JsonKey(name: 'location')
  final String? location;

  factory UploadImageResponse.fromJson(Map<String, dynamic> json) => _$UploadImageResponseFromJson(json);
}
