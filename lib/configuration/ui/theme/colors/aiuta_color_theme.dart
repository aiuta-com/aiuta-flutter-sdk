import 'package:json_annotation/json_annotation.dart';
import 'aiuta_color_scheme.dart';

part 'aiuta_color_theme.g.dart';

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

  /// Constructor for AiutaColorTheme.
  ///
  /// [scheme] - Color scheme for the theme. Provided colors should match the scheme.
  /// [brand] - Main accent color of the app.
  /// [primary] - Color for the main text.
  /// [secondary] - Color for secondary text.
  /// [onDark] - Preferably light color in any scheme to be used on dark, brand, and neutral backgrounds.
  /// [onLight] - Preferably dark color in any scheme to be used on light backgrounds.
  /// [background] - Main background color of the SDK.
  /// [screen] - Zero elevation background color.
  /// [neutral] - Neutral background color.
  /// [border] - Color for the borders of the components.
  /// [outline] - Color for the blur outlines and checkmark borders.
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

  /// Create a new instance of AiutaColorTheme from a json map.
  factory AiutaColorTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaColorThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaColorThemeToJson(this);
}
