import 'package:json_annotation/json_annotation.dart';

import 'aiuta_try_on_input_image_validation_strings.dart';

part 'aiuta_try_on_input_image_validation_feature.g.dart';

@JsonSerializable()
class AiutaTryOnInputImageValidationFeature {
  /// Strings used in the input image validation feature.
  final AiutaTryOnInputImageValidationStrings strings;

  AiutaTryOnInputImageValidationFeature({
    required this.strings,
  });

  /// Create a new instance of AiutaTryOnInputImageValidationFeature from a json map.
  factory AiutaTryOnInputImageValidationFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationFeatureFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationFeatureToJson(this);
}
