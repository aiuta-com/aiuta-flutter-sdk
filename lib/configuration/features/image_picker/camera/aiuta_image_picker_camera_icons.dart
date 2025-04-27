import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_icons.g.dart';

@JsonSerializable()
class AiutaImagePickerCameraIcons {
  /// Icon for the camera.
  final AiutaIcon camera24;

  AiutaImagePickerCameraIcons({
    required this.camera24,
  });

  /// Create a new instance of AiutaImagePickerCameraIcons from a json map.
  factory AiutaImagePickerCameraIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaImagePickerCameraIconsToJson(this);
}
