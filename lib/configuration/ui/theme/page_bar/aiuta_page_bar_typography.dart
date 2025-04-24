import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_typography.g.dart';

@JsonSerializable()
class AiutaPageBarTypography {
  /// Page title text style.
  final AiutaTextStyle pageTitle;

  AiutaPageBarTypography({
    required this.pageTitle,
  });

  /// Create a new instance of AiutaPageBarTypography from a json map.
  factory AiutaPageBarTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarTypographyFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPageBarTypographyToJson(this);
}