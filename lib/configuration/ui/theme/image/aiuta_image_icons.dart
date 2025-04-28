import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_icons.g.dart';

/// This contains the icons for the image views.
@JsonSerializable()
class AiutaImageIcons {
  /// Error icon with size 36.
  final AiutaIcon imageError36;

  /// Create an [AiutaImageIcons] with the given [imageError36] icon
  /// to indicate images that are failed to load.
  AiutaImageIcons({
    required this.imageError36,
  });

  // Internal json staff
  factory AiutaImageIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaImageIconsToJson(this);
}
