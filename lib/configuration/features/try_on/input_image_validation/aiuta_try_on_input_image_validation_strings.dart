import 'package:aiuta_flutter/configuration/features/base/aiuta_customization_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_input_image_validation_strings.g.dart';

/// Strings used in the input image validation feature.
sealed class AiutaTryOnInputImageValidationStrings {
  /// The type of the strings, indicating whether it is built-in or custom.
  AiutaCustomizationType type;

  /// Constructs an [AiutaTryOnInputImageValidationStrings] with the specified [type].
  AiutaTryOnInputImageValidationStrings(this.type);

  // Internal json staff
  factory AiutaTryOnInputImageValidationStrings.fromJson(
      Map<String, dynamic> json) {
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
class AiutaTryOnInputImageValidationStringsBuiltIn
    extends AiutaTryOnInputImageValidationStrings {
  /// Creates an instance of the built-in try-on input image validation strings.
  AiutaTryOnInputImageValidationStringsBuiltIn()
      : super(AiutaCustomizationType.builtIn);

  // Internal json staff
  factory AiutaTryOnInputImageValidationStringsBuiltIn.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationStringsBuiltInFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationStringsBuiltInToJson(this);
}

/// A custom implementation of the `AiutaTryOnInputImageValidationStrings`.
///
/// This class allows for custom strings to be provided for the input image validation feature.
@JsonSerializable()
class AiutaTryOnInputImageValidationStringsCustom
    extends AiutaTryOnInputImageValidationStrings {
  /// Generic description shown when the input image is invalid.
  final String invalidInputImageDescription;

  /// Text for the button to change the photo.
  final String invalidInputImageChangePhotoButton;

  /// Shown when no person was detected in the photo.
  final String noPeopleDetectedDescription;

  /// Shown when too many people were detected in the photo.
  final String tooManyPeopleDetectedDescription;

  /// Shown when a minor was detected in the photo.
  final String childDetectedDescription;

  /// Shown when the area to try on is not clearly visible.
  final String insufficientTargetAreaDescription;

  /// Shown when the result cannot be returned due to internal restrictions.
  final String internalRestrictionDescription;

  /// Creates an [AiutaTryOnInputImageValidationStringsCustom] with the generic
  /// [invalidInputImageDescription], the [invalidInputImageChangePhotoButton]
  /// and the per-reason descriptions returned by the backend for a try-on
  /// operation.
  AiutaTryOnInputImageValidationStringsCustom({
    required this.invalidInputImageDescription,
    required this.invalidInputImageChangePhotoButton,
    required this.noPeopleDetectedDescription,
    required this.tooManyPeopleDetectedDescription,
    required this.childDetectedDescription,
    required this.insufficientTargetAreaDescription,
    required this.internalRestrictionDescription,
  }) : super(AiutaCustomizationType.custom);

  // Internal json staff
  factory AiutaTryOnInputImageValidationStringsCustom.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationStringsCustomFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationStringsCustomToJson(this);
}
