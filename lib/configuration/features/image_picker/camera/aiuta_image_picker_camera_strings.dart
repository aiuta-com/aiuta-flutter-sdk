import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_strings.g.dart';

/// Strings used in the camera feature of the image picker.
@JsonSerializable()
class AiutaImagePickerCameraStrings {
  /// Text for the button to take a photo.
  final String cameraButtonTakePhoto;

  /// Title for the camera permission dialog.
  final String cameraPermissionTitle;

  /// Description for the camera permission dialog.
  final String cameraPermissionDescription;

  /// Text for the button to open settings for camera permission.
  final String cameraPermissionButtonOpenSettings;

  /// Creates an [AiutaImagePickerCameraStrings] with the required
  /// [cameraButtonTakePhoto] title for the button in the bottom sheet to
  /// take a photo, [cameraPermissionTitle], [cameraPermissionDescription], and
  /// [cameraPermissionButtonOpenSettings] strings to display alert when the
  /// camera permission is rejected by the user after the first time.
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
