import 'package:json_annotation/json_annotation.dart';
import 'aiuta_page_bar_typography.dart';
import 'aiuta_page_bar_icons.dart';
import 'aiuta_page_bar_toggles.dart';

part 'aiuta_page_bar_theme.g.dart';

@JsonSerializable()
class AiutaPageBarTheme {
  /// Typography styles for the page bar.
  final AiutaPageBarTypography typography;

  /// Icon configurations for the page bar.
  final AiutaPageBarIcons icons;

  /// Toggle configurations for the page bar.
  final AiutaPageBarToggles toggles;

  AiutaPageBarTheme({
    required this.typography,
    required this.icons,
    required this.toggles,
  });

  /// Create a new instance of AiutaPageBarTheme from a json map.
  factory AiutaPageBarTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaPageBarThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaPageBarThemeToJson(this);
}