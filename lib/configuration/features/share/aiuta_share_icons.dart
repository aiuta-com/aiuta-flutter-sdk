import 'package:aiuta_flutter/models/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_share_icons.g.dart';

/// Icons used in the share feature.
@JsonSerializable()
class AiutaShareIcons {
  /// Icon for the share button.
  final AiutaIcon share24;

  /// Creates an [AiutaShareIcons] with the provided [share24] icon.
  AiutaShareIcons({
    required this.share24,
  });

  // Internal json staff
  factory AiutaShareIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaShareIconsFromJson(json);

  Map<String, dynamic> toJson() => _$AiutaShareIconsToJson(this);
}
