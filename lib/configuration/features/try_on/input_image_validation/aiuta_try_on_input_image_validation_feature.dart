import 'package:aiuta_flutter/configuration/features/try_on/input_image_validation/aiuta_try_on_input_image_validation_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_input_image_validation_feature.g.dart';

@JsonSerializable()
class AiutaTryOnInputImageValidationFeature {
  /// Strings used in the input image validation feature.
  final AiutaTryOnInputImageValidationStrings strings;

  AiutaTryOnInputImageValidationFeature({
    required this.strings,
  });

  // Internal json staff
  factory AiutaTryOnInputImageValidationFeature.fromJson(
          Map<String, dynamic> json) =>
      _$AiutaTryOnInputImageValidationFeatureFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AiutaTryOnInputImageValidationFeatureToJson(this);
}
