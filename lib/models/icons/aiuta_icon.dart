import 'package:aiuta_flutter/models/icons/aiuta_render_mode.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_icon.g.dart';

/// Provides an icon resource for the SDK.
@JsonSerializable()
class AiutaIcon {
  /// The path to the icon.
  final String path;

  /// The render mode of the icon.
  /// [AiutaRenderMode.template] is the default mode,
  /// which allows the icon to be tinted with the theme colors.
  final AiutaRenderMode renderMode;

  /// Creates an [AiutaIcon] by the specified [path].
  ///
  /// The [path] should be a valid path to the icon resource.
  ///
  /// Optional [renderMode] is set to [AiutaRenderMode.template] by default which
  /// allows the icon to be tinted with the theme colors.
  /// Set [AiutaRenderMode.original] to use the original colors of the icon image.
  AiutaIcon({
    required this.path,
    this.renderMode = AiutaRenderMode.template,
  });

  // Json staff
  factory AiutaIcon.fromJson(Map<String, dynamic> json) =>
      _$AiutaIconFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaIconToJson(this);
}
