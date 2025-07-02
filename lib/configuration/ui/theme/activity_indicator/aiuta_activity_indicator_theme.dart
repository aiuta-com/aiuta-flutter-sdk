import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_colors.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/activity_indicator/aiuta_activity_indicator_settings.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_activity_indicator_theme.g.dart';

/// A theme configuration for the Aiuta activity indicator widget.
///
/// This class holds the icons, colors, and settings used to style
/// the activity indicator.
@JsonSerializable()
class AiutaActivityIndicatorTheme {
  /// The icon set used for the activity indicator.
  final AiutaActivityIndicatorIcons icons;

  /// The color scheme for the activity indicator.
  final AiutaActivityIndicatorColors colors;

  /// The settings for the activity indicator's behavior and appearance.
  final AiutaActivityIndicatorSettings settings;

  /// Creates an [AiutaActivityIndicatorTheme] with the given [icons], [colors], and [settings].
  AiutaActivityIndicatorTheme({
    required this.icons,
    required this.colors,
    required this.settings,
  });

  /// Creates a built-in theme configuration with default settings.
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
