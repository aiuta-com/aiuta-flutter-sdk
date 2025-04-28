import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_label_typography.g.dart';

/// This contains the typography styles for labels.
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

  /// Creates an [AiutaLabelTypography] with the given text styles.
  AiutaLabelTypography({
    required this.titleL,
    required this.titleM,
    required this.regular,
    required this.subtle,
  });

  // Internal json staff
  factory AiutaLabelTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaLabelTypographyFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaLabelTypographyToJson(this);
}
