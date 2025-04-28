import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_icons.dart';
import 'package:aiuta_flutter/configuration/ui/theme/image/aiuta_image_shapes.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_theme.g.dart';

/// The theme for image views in the Aiuta UI.
@JsonSerializable()
class AiutaImageTheme {
  /// Shape configurations for images.
  final AiutaImageShapes shapes;

  /// Icon configurations.
  final AiutaImageIcons icons;

  /// Creates an [AiutaImageTheme] with the specified [shapes] and [icons].
  AiutaImageTheme({
    required this.shapes,
    required this.icons,
  });

  // Internal json staff
  factory AiutaImageTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageThemeFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImageThemeToJson(this);
}
