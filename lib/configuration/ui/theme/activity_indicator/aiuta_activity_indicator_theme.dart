import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_settings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_activity_indicator_theme.g.dart';

@JsonSerializable()
class AiutaActivityIndicatorTheme {
  final AiutaActivityIndicatorIcons icons;

  final AiutaActivityIndicatorColors colors;

  final AiutaActivityIndicatorSettings settings;

  AiutaActivityIndicatorTheme({
    required this.icons,
    required this.colors,
    required this.settings,
  });

  /// Creates a built-in bottom sheet theme configuration with default settings.
  factory AiutaActivityIndicatorTheme.builtIn() {
    return AiutaActivityIndicatorTheme(
      icons: AiutaActivityIndicatorIconsBuiltIn(),
      colors: AiutaActivityIndicatorColors.builtIn(),
      settings: AiutaActivityIndicatorSettings.builtIn(),
    );
  }

  // Internal json staff
  factory AiutaActivityIndicatorTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaActivityIndicatorThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaActivityIndicatorThemeToJson(this);
}
