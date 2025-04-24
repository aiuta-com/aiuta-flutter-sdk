import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_label_typography.g.dart';

@JsonSerializable()
class AiutaLabelTypography {
  /// Large title text style.
  final AiutaTextStyle titleL;

  /// Medium title text style.
  final AiutaTextStyle titleM;

  /// Regular text style.
  final AiutaTextStyle regular;

  /// Subtle text style.
  final AiutaTextStyle subtle;

  AiutaLabelTypography({
    required this.titleL,
    required this.titleM,
    required this.regular,
    required this.subtle,
  });

  /// Create a new instance of AiutaTypography from a json map.
  factory AiutaLabelTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaLabelTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaLabelTypographyToJson(this);
}
