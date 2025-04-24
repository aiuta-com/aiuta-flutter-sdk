import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_render_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_icon.g.dart';

@JsonSerializable()
class AiutaIcon {
  /// The path to the icon.
  final String path;

  /// The render mode of the icon.
  /// [template] is the default mode, which allows the icon to be tinted with the theme colors.
  final AiutaRenderMode renderMode;

  AiutaIcon({
    required this.path,
    this.renderMode = AiutaRenderMode.template,
  });

  // Json staff
  factory AiutaIcon.fromJson(Map<String, dynamic> json) =>
      _$AiutaIconFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaIconToJson(this);
}
