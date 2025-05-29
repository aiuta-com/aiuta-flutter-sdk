import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_input_image_validation_strings.g.dart';

/// Strings used in the input image validation feature.
sealed class AiutaTryOnInputImageValidationStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  final AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnInputImageValidationStrings] with the specified [type].
  AiutaTryOnInputImageValidationStrings(this.type);

  // Internal json staff
  factory AiutaTryOnInputImageValidationStrings.fromJson(Map<String, dynamic> json) {
    switch (json['type'] as String) {
      case 'builtIn':
        return AiutaTryOnInputImageValidationStringsBuiltIn.fromJson(json);
      case 'custom':
        return AiutaTryOnInputImageValidationStringsCustom.fromJson(json);
      default:
        throw Exception('Unknown try-on input image validation strings type');
    }
  }

  Map<String, dynamic> toJson();
}

/// A built-in implementation of the `AiutaTryOnInputImageValidationStrings`.
///
/// This class represents the default, built-in strings for the input image validation feature.
@JsonSerializable()
class AiutaTryOnInputImageValidationStringsBuiltIn extends AiutaTryOnInputImageValidationStrings {
  /// Creates an instance of the built-in try-on input image validation strings.
  AiutaTryOnInputImageValidationStringsBuiltIn() : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnInputImageValidationStringsBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnInputImageValidationStrings`.
///
/// This class allows for custom strings to be provided for the input image validation feature.
@JsonSerializable()
class AiutaTryOnInputImageValidationStringsCustom extends AiutaTryOnInputImageValidationStrings {
  /// Description for invalid input images.
  final String invalidInputImageDescription;

  /// Text for the button to change the photo.
  final String invalidInputImageChangePhotoButton;

  /// Creates an [AiutaTryOnInputImageValidationStringsCustom] with the
  /// [invalidInputImageDescription] and [invalidInputImageChangePhotoButton].
  AiutaTryOnInputImageValidationStringsCustom({
    required this.invalidInputImageDescription,
    required this.invalidInputImageChangePhotoButton,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnInputImageValidationStringsCustom.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationStringsCustomToJson(this);
}
