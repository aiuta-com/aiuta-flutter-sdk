import 'package:aiuta_flutter/configuration/ui/theme/colors/aiuta_color_scheme.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_color_theme.g.dart';

/// Represents a color theme for the Aiuta SDK.
@JsonSerializable()
class AiutaColorTheme {
  /// Color scheme for the theme.
  /// Provided colors should match the scheme.
  final AiutaColorScheme scheme;

  /// Main accent color of the app.
  final String brand;

  /// Color for the main text.
  final String primary;

  /// Color for secondary text.
  final String secondary;

  /// Preferably light color in any scheme to be used on dark, brand and neutral backgrounds.
  final String onDark;

  /// Preferably dark color in any scheme to be used on light backgrounds.
  final String onLight;

  /// Main background color of the SDK.
  final String background;

  /// Zero elevation background color.
  final String screen;

  /// Neutral background color.
  final String neutral;

  /// Color for the borders of the components.
  final String border;

  /// Color for the blur outlines and checkmark borders.
  final String outline;

  /// Create an [AiutaColorTheme] with [scheme] that should match the provided colors:
  /// [brand] - Main accent color of the app,
  /// [primary] - Color for the main text,
  /// [secondary] - Color for secondary text,
  /// [onDark] - Preferably light color in any scheme to be used on dark, brand, and neutral backgrounds,
  /// [onLight] - Preferably dark color in any scheme to be used on light backgrounds,
  /// [background] - Main background color of the SDK,
  /// [screen] - Zero elevation background color,
  /// [neutral] - Neutral background color,
  /// [border] - Color for the borders of the components,
  /// [outline] - Color for the blur outlines and checkmark borders,
  AiutaColorTheme({
    required this.scheme,
    required this.brand,
    required this.primary,
    required this.secondary,
    required this.onDark,
    required this.onLight,
    required this.background,
    required this.screen,
    required this.neutral,
    required this.border,
    required this.outline,
  });

  /// Creates a built-in color theme configuration with default settings.
  factory AiutaColorTheme.builtIn() {
    return AiutaColorTheme(
      scheme: AiutaColorScheme.light,
      brand: "#FF4000FF",
      primary: "#FF000000",
      secondary: "#FF9F9F9F",
      onDark: "#FFFFFFFF",
      onLight: "#FF000000",
      background: "#FFFFFFFF",
      screen: "#FFFFFFFF",
      neutral: "#FFF2F2F7",
      border: "#FFE5E5EA",
      outline: "#FFC7C7CC",
    );
  }

  // Internal json staff
  factory AiutaColorTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaColorThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaColorThemeToJson(this);
}
