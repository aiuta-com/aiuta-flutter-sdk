import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_icons.dart';
import 'package:aiuta_flutter/configuration/features/image_picker/camera/aiuta_image_picker_camera_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_camera_feature.g.dart';

@JsonSerializable()
class AiutaImagePickerCameraFeature {
  /// Icons used in the camera feature.
  final AiutaImagePickerCameraIcons icons;

  /// Strings used in the camera feature.
  final AiutaImagePickerCameraStrings strings;

  AiutaImagePickerCameraFeature({
    required this.icons,
    required this.strings,
  });

  // Internal json staff
  factory AiutaImagePickerCameraFeature.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerCameraFeatureFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImagePickerCameraFeatureToJson(this);
}
