import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_colors_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_power_bar_colors.g.dart';

/// Colors used in the `powered by` bar.
@JsonSerializable()
class AiutaPowerBarColors {
  /// Color for the Aiuta branding.
  final AiutaPowerBarColorsScheme aiuta;

  /// Creates an [AiutaPowerBarColors] with the given [aiuta] color.
  AiutaPowerBarColors({
    required this.aiuta,
  });

  factory AiutaPowerBarColors.builtIn() {
    return AiutaPowerBarColors(
      aiuta: AiutaPowerBarColorsScheme.standard,
    );
  }

  // Internal json staff
  factory AiutaPowerBarColors.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarColorsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPowerBarColorsToJson(this);
}
