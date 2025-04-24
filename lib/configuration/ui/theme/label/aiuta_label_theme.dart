import 'package:json_annotation/json_annotation.dart';
import 'aiuta_label_typography.dart';

part 'aiuta_label_theme.g.dart';

@JsonSerializable()
class AiutaLabelTheme {
  /// Typography styles for labels.
  final AiutaLabelTypography typography;

  AiutaLabelTheme({
    required this.typography,
  });

  /// Create a new instance of AiutaLabelTheme from a json map.
  factory AiutaLabelTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaLabelThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaLabelThemeToJson(this);
}
