import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_shapes.dart';
import 'package:aiuta_flutter/configuration/ui/theme/button/aiuta_button_typography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_button_theme.g.dart';

/// Defines the theme for buttons in the Aiuta UI.
@JsonSerializable()
class AiutaButtonTheme {
  /// Typography styles for buttons.
  final AiutaButtonTypography typography;

  /// Shape configurations for buttons.
  final AiutaButtonShapes shapes;

  /// Creates an [AiutaButtonTheme] with the specified [typography] and [shapes].
  AiutaButtonTheme({
    required this.typography,
    required this.shapes,
  });

  // Internal json staff
  factory AiutaButtonTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaButtonThemeToJson(this);
}
