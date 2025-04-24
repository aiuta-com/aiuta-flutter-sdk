import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_button_typography.g.dart';

@JsonSerializable()
class AiutaButtonTypography {
  /// Medium button text style.
  final AiutaTextStyle buttonM;

  /// Small button text style.
  final AiutaTextStyle buttonS;

  AiutaButtonTypography({
    required this.buttonM,
    required this.buttonS,
  });

  /// Create a new instance of AiutaButtonTypography from a json map.
  factory AiutaButtonTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaButtonTypographyToJson(this);
}