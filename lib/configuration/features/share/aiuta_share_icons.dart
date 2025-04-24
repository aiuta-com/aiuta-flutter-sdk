import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_icons.g.dart';

@JsonSerializable()
class AiutaShareIcons {
  /// Icon for the share button.
  final AiutaIcon share24;

  AiutaShareIcons({
    required this.share24,
  });

  /// Create a new instance of AiutaShareIcons from a json map.
  factory AiutaShareIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaShareIconsToJson(this);
}
