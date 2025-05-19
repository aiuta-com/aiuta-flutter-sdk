import 'package:aiuta_flutter/configuration/ui/theme/label/aiuta_label_typography.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_label_theme.g.dart';

/// Theme for labels and text views in the Aiuta UI.
@JsonSerializable()
class AiutaLabelTheme {
  /// Typography styles for labels.
  final AiutaLabelTypography typography;

  /// Creates an [AiutaLabelTheme] with the given [typography].
  AiutaLabelTheme({
    required this.typography,
  });

  // Internal json staff
  factory AiutaLabelTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaLabelThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaLabelThemeToJson(this);
}
