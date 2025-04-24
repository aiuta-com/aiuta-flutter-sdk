import 'package:aiuta_flutter/configuration/ui/theme/icons/aiuta_icon.dart';
import 'package:json_annotation/json_annotation.dart';

part 'aiuta_welcome_screen_icons.g.dart';

@JsonSerializable()
class AiutaWelcomeScreenIcons {
  /// Icon for the welcome screen.
  final AiutaIcon welcome82;

  AiutaWelcomeScreenIcons({
    required this.welcome82,
  });

  /// Create a new instance of AiutaWelcomeScreenIcons from a json map.
  factory AiutaWelcomeScreenIcons.fromJson(Map<String, dynamic> json) =>
      _$AiutaWelcomeScreenIconsFromJson(json);

  /// Convert this object to a json map.
  Map<String, dynamic> toJson() => _$AiutaWelcomeScreenIconsToJson(this);
}
