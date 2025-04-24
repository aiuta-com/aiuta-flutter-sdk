import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_image_icons.g.dart';

@JsonSerializable()
class AiutaImageIcons {
  /// Error icon with size 36.
  final AiutaIcon imageError36;

  AiutaImageIcons({
    required this.imageError36,
  });

  /// Create a new instance of AiutaImageIcons from a json map.
  factory AiutaImageIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaImageIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaImageIconsToJson(this);
}
