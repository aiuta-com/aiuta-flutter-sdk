import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_button_typography.g.dart';

/// Defines the typography styles for buttons in the Aiuta UI.
@JsonSerializable()
class AiutaButtonTypography {
  /// Medium button text style.
  final AiutaTextStyle buttonM;

  /// Small button text style.
  final AiutaTextStyle buttonS;

  /// Creates an [AiutaButtonTypography] with the specified [buttonM]
  /// and [buttonS] text styles.
  AiutaButtonTypography({
    required this.buttonM,
    required this.buttonS,
  });

  // Internal json staff
  factory AiutaButtonTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonTypographyFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaButtonTypographyToJson(this);
}
