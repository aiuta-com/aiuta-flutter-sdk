import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_text_style.g.dart';

/// Represents the text style used in the Aiuta app.
@JsonSerializable()
class AiutaTextStyle {
  /// The font family used for the text style.
  final String fontFamily;

  /// The font size used for the text style.
  final double fontSize;

  /// The font weight used for the text style.
  final AiutaFontWeight fontWeight;

  /// The letter spacing used for the text style.
  final double letterSpacing;

  /// The line height used for the text style.
  final double lineHeight;

  /// Creates an [AiutaTextStyle] with the specified [fontFamily], [fontSize],
  /// [fontWeight], [letterSpacing], and [lineHeight].
  AiutaTextStyle({
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    required this.letterSpacing,
    required this.lineHeight,
  });

  // Internal json staff
  factory AiutaTextStyle.fromJson(Map<String, dynamic> json) =>
      _$AiutaTextStyleFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaTextStyleToJson(this);
}
