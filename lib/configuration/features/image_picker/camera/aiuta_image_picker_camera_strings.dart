import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_strings.g.dart';

@JsonSerializable()
class AiutaImagePickerCameraStrings {
  /// Text for the button to take a photo.
  final String cameraButtonTakePhoto;

  /// Title for the camera permission dialog.
  final String cameraPermissionTitle;

  /// Description for the camera permission dialog.
  final String cameraPermissionDescription;

  /// Text for the button to open settings for camera permissions.
  final String cameraPermissionButtonOpenSettings;

  AiutaImagePickerCameraStrings({
    required this.cameraButtonTakePhoto,
    required this.cameraPermissionTitle,
    required this.cameraPermissionDescription,
    required this.cameraPermissionButtonOpenSettings,
  });

  // Internal json staff
  factory AiutaImagePickerCameraStrings.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraStringsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerCameraStringsToJson(this);
}
