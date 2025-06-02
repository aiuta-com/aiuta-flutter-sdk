import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_picker_strings.g.dart';

/// Strings used in the image picker feature.
sealed class AiutaImagePickerStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaImagePickerStrings] with the specified [type].
  AiutaImagePickerStrings(this.type);

  // Internal json staff
  factory AiutaImagePickerStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaImagePickerStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaImagePickerStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown image picker strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaImagePickerStrings`.
///
/// This class represents the default, built-in strings for the image picker
/// feature. It does not require any custom implementation and uses
/// predefined behavior.
@JsonSerializable()
class AiutaImagePickerStringsBuiltIn extends AiutaImagePickerStrings {
  /// Creates an instance of the built-in image picker strings.
  AiutaImagePickerStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaImagePickerStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaImagePickerStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaImagePickerStrings`.
///
/// This class allows for custom strings to be provided for the image picker
/// feature, including custom titles, descriptions, and button texts.
@JsonSerializable()
class AiutaImagePickerStringsCustom extends AiutaImagePickerStrings {
  /// Title displayed when the image picker is empty.
  final String imagePickerTitleEmpty;

  /// Description displayed when the image picker is empty.
  final String imagePickerDescriptionEmpty;

  /// Text for the button to upload an image.
  final String imagePickerButtonUploadImage;

  /// Creates an [AiutaImagePickerStringsCustom] with the given [imagePickerTitleEmpty],
  /// [imagePickerDescriptionEmpty], and [imagePickerButtonUploadImage] strings.
  AiutaImagePickerStringsCustom({
    required this.imagePickerTitleEmpty,
    required this.imagePickerDescriptionEmpty,
    required this.imagePickerButtonUploadImage,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaImagePickerStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaImagePickerStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$AiutaImagePickerStringsCustomToJson(this);
}
