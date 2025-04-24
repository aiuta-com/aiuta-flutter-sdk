import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_input_image_validation_strings.g.dart';

@JsonSerializable()
class AiutaTryOnInputImageValidationStrings {
  /// Description for invalid input images.
  final String invalidInputImageDescription;

  /// Text for the button to change the photo.
  final String invalidInputImageChangePhotoButton;

  AiutaTryOnInputImageValidationStrings({
    required this.invalidInputImageDescription,
    required this.invalidInputImageChangePhotoButton,
  });

  /// Create a new instance of AiutaTryOnInputImageValidationStrings from a json map.
  factory AiutaTryOnInputImageValidationStrings.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationStringsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationStringsToJson(this);
}
