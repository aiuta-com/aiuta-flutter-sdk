import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/power_bar/aiuta_power_bar_strings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_power_bar_theme.g.dart';

/// Theme for the `powered by` bar.
@JsonSerializable()
class AiutaPowerBarTheme {
  /// Strings used in the `powered by` bar.
  final AiutaPowerBarStrings strings;

  /// Colors used in the `powered by` bar.
  final AiutaPowerBarColors colors;

  /// Creates an [AiutaPowerBarTheme] with [strings] and [colors].
  AiutaPowerBarTheme({
    required this.strings,
    required this.colors,
  });

  // Internal json staff
  factory AiutaPowerBarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaPowerBarThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaPowerBarThemeToJson(this);
}
