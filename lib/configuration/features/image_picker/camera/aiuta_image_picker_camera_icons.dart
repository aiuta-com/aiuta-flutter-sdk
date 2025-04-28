import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_icons.g.dart';

/// Icons used in the camera feature of the image picker.
@JsonSerializable()
class AiutaImagePickerCameraIcons {
  /// Icon for the camera.
  final AiutaIcon camera24;

  /// Creates an [AiutaImagePickerCameraIcons] with the required [camera24]
  /// icon fore the bottom sheet icon button to select the camera option.
  AiutaImagePickerCameraIcons({
    required this.camera24,
  });

  // Internal json staff
  factory AiutaImagePickerCameraIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerCameraIconsToJson(this);
}
