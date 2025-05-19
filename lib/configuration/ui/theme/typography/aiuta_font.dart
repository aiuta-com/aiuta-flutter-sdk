import 'package:aiuta_flutter/configuration/ui/theme/typography/aiuta_font_weight.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_font.g.dart';

/// AiutaFont is a class that represents a font used in the Aiuta app.
@JsonSerializable()
class AiutaFont {
  /// The path to the font file.
  final String filePath;

  /// The family of the font.
  final String family;

  /// The weight of the font.
  final AiutaFontWeight weight;

  /// Creates an [AiutaFont] located by [filePath],
  /// specifying the font [family] and [weight].
  AiutaFont({
    required this.filePath,
    required this.family,
    required this.weight,
  });

  // Internal json staff
  factory AiutaFont.fromJson(Map<String, dynamic> json) =>
      _$AiutaFontFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaFontToJson(this);
}
