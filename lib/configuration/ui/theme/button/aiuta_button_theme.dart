import 'package:json_annotation/json_annotation.dart';
import 'aiuta_button_typography.dart';
import 'aiuta_button_shapes.dart';

part 'aiuta_button_theme.g.dart';

@JsonSerializable()
class AiutaButtonTheme {
  /// Typography styles for buttons.
  final AiutaButtonTypography typography;

  /// Shape configurations for buttons.
  final AiutaButtonShapes shapes;

  AiutaButtonTheme({
    required this.typography,
    required this.shapes,
  });

  /// Create a new instance of AiutaButtonTheme from a json map.
  factory AiutaButtonTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaButtonThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaButtonThemeToJson(this);
}