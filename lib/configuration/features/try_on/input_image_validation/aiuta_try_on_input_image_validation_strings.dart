import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_input_image_validation_strings.g.dart';

/// Strings used in the input image validation feature.
@JsonSerializable()
class AiutaTryOnInputImageValidationStrings {
  /// Description for invalid input images.
  final String invalidInputImageDescription;

  /// Text for the button to change the photo.
  final String invalidInputImageChangePhotoButton;

  /// Creates an [AiutaTryOnInputImageValidationStrings] with the
  /// [invalidInputImageDescription] and [invalidInputImageChangePhotoButton].
  AiutaTryOnInputImageValidationStrings({
    required this.invalidInputImageDescription,
    required this.invalidInputImageChangePhotoButton,
  });

  // Internal json staff
  factory AiutaTryOnInputImageValidationStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationStringsFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationStringsToJson(this);
}
