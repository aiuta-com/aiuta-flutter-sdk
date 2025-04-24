import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_try_on_icons.g.dart';

@JsonSerializable()
class AiutaTryOnIcons {
  /// Icon for the Try-On feature.
  final AiutaIcon tryOn20;

  AiutaTryOnIcons({
    required this.tryOn20,
  });

  /// Create a new instance of AiutaTryOnIcons from a json map.
  factory AiutaTryOnIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaTryOnIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaTryOnIconsToJson(this);
}
