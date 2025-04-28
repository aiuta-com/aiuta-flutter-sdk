import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_with_other_photo_icons.g.dart';

@JsonSerializable()
class AiutaTryOnWithOtherPhotoIcons {
  /// Icon for changing the photo.
  final AiutaIcon changePhoto24;

  AiutaTryOnWithOtherPhotoIcons({
    required this.changePhoto24,
  });

  // Internal json staff
  factory AiutaTryOnWithOtherPhotoIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnWithOtherPhotoIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTryOnWithOtherPhotoIconsToJson(this);
}
