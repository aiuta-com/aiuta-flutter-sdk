import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_icons.g.dart';

/// Icons used in the camera feature of the image picker.
sealed class AiutaImagePickerCameraIcons {
  /// The type of the icons, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerCameraIcons] with the specified [type].
  AiutaImagePickerCameraIcons(this.type);

  // Internal json staff
  factory AiutaImagePickerCameraIcons.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerCameraIconsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerCameraIconsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker camera icons type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerCameraIcons`.
///
/// This class represents the default, built-in icons for the camera feature.
@JsonSerializable()
class AiutaImagePickerCameraIconsBuiltIn extends AiutaImagePickerCameraIcons {
  /// Creates an instance of the built-in image picker camera icons.
  AiutaImagePickerCameraIconsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerCameraIconsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraIconsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerCameraIconsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerCameraIcons`.
///
/// This class allows for custom icons to be provided for the camera feature.
@JsonSerializable()
class AiutaImagePickerCameraIconsCustom extends AiutaImagePickerCameraIcons {
  /// Icon for the camera.
  final AiutaIcon camera24;

  /// Creates an [AiutaImagePickerCameraIconsCustom] with the required [camera24]
  /// icon fore the bottom sheet icon button to select the camera option.
  AiutaImagePickerCameraIconsCustom({
    required this.camera24,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerCameraIconsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraIconsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaImagePickerCameraIconsCustomToJson(this);
}
