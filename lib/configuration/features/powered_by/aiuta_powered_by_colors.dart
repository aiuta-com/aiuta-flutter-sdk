import 'package:json_annotation/json_annotation.dart';

part 'aiuta_powered_by_colors.g.dart';

@JsonSerializable()
class AiutaPoweredByColors {
  /// Color for the Aiuta branding.
  final String aiuta;

  AiutaPoweredByColors({
    required this.aiuta,
  });

  /// Create a new instance of AiutaPoweredByColors from a json map.
  factory AiutaPoweredByColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaPoweredByColorsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPoweredByColorsToJson(this);
}
