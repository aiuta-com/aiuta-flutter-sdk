import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_text_style.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_page_bar_typography.g.dart';

/// Configuration for the page bar typography.
@JsonSerializable()
class AiutaPageBarTypography {
  /// Page title text style.
  final AiutaTextStyle pageTitle;

  /// Creates an [AiutaPageBarTypography] with [pageTitle] text style.
  AiutaPageBarTypography({
    required this.pageTitle,
  });

  // Internal json staff
  factory AiutaPageBarTypography.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarTypographyFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPageBarTypographyToJson(this);
}
