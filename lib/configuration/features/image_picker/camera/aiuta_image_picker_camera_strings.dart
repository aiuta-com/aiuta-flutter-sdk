import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_strings.g.dart';

/// Strings used in the camera feature of the image picker.
sealed class AiutaImagePickerCameraStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerCameraStrings] with the specified [type].
  AiutaImagePickerCameraStrings(this.type);

  // Internal json staff
  factory AiutaImagePickerCameraStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerCameraStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerCameraStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker camera strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerCameraStrings`.
///
/// This class represents the default, built-in strings for the camera feature
/// of the image picker. It does not require any custom implementation and uses
/// predefined behavior.
@JsonSerializable()
class AiutaImagePickerCameraStringsBuiltIn
    extends AiutaImagePickerCameraStrings {
  /// Creates an instance of the built-in image picker camera strings.
  AiutaImagePickerCameraStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerCameraStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerCameraStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerCameraStrings`.
///
/// This class allows for custom strings to be provided for the camera feature
/// of the image picker, including custom button texts and permission messages.
@JsonSerializable()
class AiutaImagePickerCameraStringsCustom
    extends AiutaImagePickerCameraStrings {
  /// Text for the button to take a photo.
  final String cameraButtonTakePhoto;

  /// Title for the camera permission dialog.
  final String cameraPermissionTitle;

  /// Description for the camera permission dialog.
  final String cameraPermissionDescription;

  /// Text for the button to open settings for camera permission.
  final String cameraPermissionButtonOpenSettings;

  /// Creates an [AiutaImagePickerCameraStringsCustom] with the required
  /// [cameraButtonTakePhoto] title for the button in the bottom sheet to
  /// take a photo, [cameraPermissionTitle], [cameraPermissionDescription], and
  /// [cameraPermissionButtonOpenSettings] strings to display alert when the
  /// camera permission is rejected by the user after the first time.
  AiutaImagePickerCameraStringsCustom({
    required this.cameraButtonTakePhoto,
    required this.cameraPermissionTitle,
    required this.cameraPermissionDescription,
    required this.cameraPermissionButtonOpenSettings,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerCameraStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerCameraStringsCustomToJson(this);
}
