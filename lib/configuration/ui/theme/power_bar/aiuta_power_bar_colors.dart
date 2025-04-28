import 'package:json_annotation/json_annotation.dart';

part 'aiuta_power_bar_colors.g.dart';

/// Colors used in the `powered by` bar.
@JsonSerializable()
class AiutaPowerBarColors {
  /// Color for the Aiuta branding.
  final String aiuta;

  /// Creates an [AiutaPowerBarColors] with the given [aiuta] color.
  AiutaPowerBarColors({
    required this.aiuta,
  });

  // Internal json staff
  factory AiutaPowerBarColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPowerBarColorsToJson(this);
}
