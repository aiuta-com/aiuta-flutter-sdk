import 'package:json_annotation/json_annotation.dart';
import 'aiuta_image_shapes.dart';
import 'aiuta_image_icons.dart';

part 'aiuta_image_theme.g.dart';

@JsonSerializable()
class AiutaImageTheme {
  /// Shape configurations for images.
  final AiutaImageShapes shapes;

  /// Icon configurations.
  final AiutaImageIcons icons;

  AiutaImageTheme({
    required this.shapes,
    required this.icons,
  });

  /// Create a new instance of AiutaImageTheme from a json map.
  factory AiutaImageTheme.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageThemeFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaImageThemeToJson(this);
}